import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:convert';

class CalendarioPage extends StatefulWidget {
  const CalendarioPage({super.key});

  @override
  State<CalendarioPage> createState() => _CalendarioPageState();
}

class _CalendarioPageState extends State<CalendarioPage> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  final Map<DateTime, bool> _completedDays =
      {}; // Para registrar días marcados como "cumplidos"
  final Map<DateTime, List<Map<String, dynamic>>> _reminders =
      {}; // Para almacenar recordatorios

  @override
  void initState() {
    super.initState();
    _loadCompletedDays();
    _loadReminders();
  }

  Future<void> _loadCompletedDays() async {
    final prefs = await SharedPreferences.getInstance();
    final completedDaysString = prefs.getString('completed_days');
    if (completedDaysString != null) {
      final Map<String, dynamic> completedDaysMap =
          jsonDecode(completedDaysString);
      setState(() {
        _completedDays.clear();
        completedDaysMap.forEach((key, value) {
          _completedDays[DateTime.parse(key)] = value;
        });
      });
    }
    await _loadCompletedDaysFromFirestore();
  }

  Future<void> _saveCompletedDays() async {
    final prefs = await SharedPreferences.getInstance();
    final completedDaysString = jsonEncode(_completedDays
        .map((key, value) => MapEntry(key.toIso8601String(), value)));
    await prefs.setString('completed_days', completedDaysString);
    await _saveCompletedDaysToFirestore();
  }

  Future<void> _loadCompletedDaysFromFirestore() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    final doc = await FirebaseFirestore.instance
        .collection('usuarios')
        .doc(user.uid)
        .get();
    if (doc.exists && doc.data() != null) {
      final data = doc.data()!;
      if (data['completed_days'] != null) {
        final Map<String, dynamic> completedDaysMap =
            Map<String, dynamic>.from(data['completed_days']);
        setState(() {
          _completedDays.clear();
          completedDaysMap.forEach((key, value) {
            _completedDays[DateTime.parse(key)] = value;
          });
        });
      }
    }
  }

  Future<void> _saveCompletedDaysToFirestore() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    final completedDaysMap = _completedDays
        .map((key, value) => MapEntry(key.toIso8601String(), value));
    await FirebaseFirestore.instance.collection('usuarios').doc(user.uid).set({
      'completed_days': completedDaysMap,
      'completed_days_count': completedDaysMap.length,
    }, SetOptions(merge: true));
  }

  Future<void> _loadReminders() async {
    final prefs = await SharedPreferences.getInstance();
    final remindersString = prefs.getString('reminders');
    if (remindersString != null) {
      final Map<String, dynamic> remindersMap = jsonDecode(remindersString);
      setState(() {
        _reminders.clear();
        remindersMap.forEach((key, value) {
          if (value is List) {
            _reminders[DateTime.parse(key)] = List<Map<String, dynamic>>.from(
                value.map((item) => Map<String, dynamic>.from(item)));
          }
        });
      });
    }
  }

  Future<void> _saveReminders() async {
    final prefs = await SharedPreferences.getInstance();
    final remindersString = jsonEncode(
        _reminders.map((key, value) => MapEntry(key.toIso8601String(), value)));
    await prefs.setString('reminders', remindersString);
  }

  void _addReminder(DateTime date, Map<String, dynamic> reminder) {
    setState(() {
      if (_reminders[date] == null) {
        _reminders[date] = [];
      }
      _reminders[date]!.add(reminder);
    });
    _saveReminders();
  }

  void _editReminder(
      DateTime date, int index, Map<String, dynamic> newReminder) {
    setState(() {
      _reminders[date]![index] = newReminder;
    });
    _saveReminders();
  }

  void _deleteReminder(DateTime date, int index) {
    setState(() {
      _reminders[date]!.removeAt(index);
      if (_reminders[date]!.isEmpty) {
        _reminders.remove(date);
      }
    });
    _saveReminders();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TableCalendar(
            focusedDay: _focusedDay,
            firstDay: DateTime.utc(2000, 1, 1),
            lastDay: DateTime.utc(2100, 12, 31),
            calendarFormat: CalendarFormat.month,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
              _showReminderDialog(selectedDay);
            },
            calendarBuilders: CalendarBuilders(
              markerBuilder: (context, day, events) {
                if (_completedDays[day] == true) {
                  return const Icon(Icons.check_circle, color: Colors.green);
                } else if (_reminders[day] != null &&
                    _reminders[day]!.isNotEmpty) {
                  return const Icon(Icons.notifications,
                      color: Colors.blue, size: 16);
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                _completedDays[_selectedDay] = true;
              });
              _saveCompletedDays();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text(
                        'Día ${_selectedDay.toLocal()} marcado como cumplido')),
              );
            },
            icon: const Icon(Icons.check),
            label: const Text('Marcar como cumplido'),
          ),
        ],
      ),
    );
  }

  void _showReminderDialog(DateTime selectedDay) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Recordatorios para ${selectedDay.toLocal()}'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (_reminders[selectedDay] != null &&
                    _reminders[selectedDay]!.isNotEmpty)
                  ..._reminders[selectedDay]!.asMap().entries.map((entry) {
                    int index = entry.key;
                    Map<String, dynamic> reminder = entry.value;
                    return ListTile(
                      title: Text(reminder['title']),
                      subtitle: Text(
                          'Hora: ${reminder['time']}\nRepetir: ${reminder['days'].join(', ')}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              _showEditReminderDialog(
                                  selectedDay, index, reminder);
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              _deleteReminder(selectedDay, index);
                              Navigator.pop(context);
                              _showReminderDialog(selectedDay);
                            },
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    _showAddReminderDialog(selectedDay);
                  },
                  child: Text('Añadir recordatorio'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  void _showAddReminderDialog(DateTime selectedDay) {
    final TextEditingController titleController = TextEditingController();
    final TextEditingController timeController = TextEditingController();
    final List<String> daysOfWeek = [
      'Lunes',
      'Martes',
      'Miércoles',
      'Jueves',
      'Viernes',
      'Sábado',
      'Domingo'
    ];
    final List<String> selectedDays = [];

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Añadir Recordatorio'),
          content: SingleChildScrollView(
            child: StatefulBuilder(
              builder: (context, setState) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(hintText: 'Título'),
                    ),
                    TextField(
                      controller: timeController,
                      decoration: InputDecoration(hintText: 'Hora (HH:MM)'),
                    ),
                    Wrap(
                      children: daysOfWeek.map((day) {
                        return ChoiceChip(
                          label: Text(day),
                          selected: selectedDays.contains(day),
                          onSelected: (selected) {
                            setState(() {
                              if (selected) {
                                selectedDays.add(day);
                              } else {
                                selectedDays.remove(day);
                              }
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ],
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                final reminder = {
                  'title': titleController.text,
                  'time': timeController.text,
                  'days': selectedDays,
                };
                _addReminder(selectedDay, reminder);
                Navigator.pop(context);
                _showReminderDialog(selectedDay);
              },
              child: Text('Guardar'),
            ),
          ],
        );
      },
    );
  }

  void _showEditReminderDialog(
      DateTime selectedDay, int index, Map<String, dynamic> reminder) {
    final TextEditingController titleController =
        TextEditingController(text: reminder['title']);
    final TextEditingController timeController =
        TextEditingController(text: reminder['time']);
    final List<String> daysOfWeek = [
      'Lunes',
      'Martes',
      'Miércoles',
      'Jueves',
      'Viernes',
      'Sábado',
      'Domingo'
    ];
    final List<String> selectedDays = List<String>.from(reminder['days']);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Editar Recordatorio'),
          content: SingleChildScrollView(
            child: StatefulBuilder(
              builder: (context, setState) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(hintText: 'Título'),
                    ),
                    TextField(
                      controller: timeController,
                      decoration: InputDecoration(hintText: 'Hora (HH:MM)'),
                    ),
                    Wrap(
                      children: daysOfWeek.map((day) {
                        return ChoiceChip(
                          label: Text(day),
                          selected: selectedDays.contains(day),
                          onSelected: (selected) {
                            setState(() {
                              if (selected) {
                                selectedDays.add(day);
                              } else {
                                selectedDays.remove(day);
                              }
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ],
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                final newReminder = {
                  'title': titleController.text,
                  'time': timeController.text,
                  'days': selectedDays,
                };
                _editReminder(selectedDay, index, newReminder);
                Navigator.pop(context);
                _showReminderDialog(selectedDay);
              },
              child: Text('Guardar'),
            ),
          ],
        );
      },
    );
  }
}
