import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarioPage extends StatefulWidget {
  const CalendarioPage({super.key});

  @override
  State<CalendarioPage> createState() => _CalendarioPageState();
}

class _CalendarioPageState extends State<CalendarioPage> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  final Map<DateTime, bool> _completedDays = {}; // Para registrar días marcados como "cumplidos"
  final Map<DateTime, String> _reminders = {}; // Para almacenar recordatorios

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
            },
            calendarBuilders: CalendarBuilders(
              markerBuilder: (context, day, events) {
                if (_completedDays[day] == true) {
                  return const Icon(Icons.check_circle, color: Colors.green);
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 16),
          if (_reminders[_selectedDay] != null) ...[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Recordatorio: ${_reminders[_selectedDay]!}',
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                _completedDays[_selectedDay] = true;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Día ${_selectedDay.toLocal()} marcado como cumplido')),
              );
            },
            icon: const Icon(Icons.check),
            label: const Text('Marcar como cumplido'),
          ),
          ElevatedButton.icon(
            onPressed: () => _mostrarDialogoRecordatorio(),
            icon: const Icon(Icons.notifications),
            label: const Text('Agregar recordatorio'),
          ),
        ],
      ),
    );
  }

  void _mostrarDialogoRecordatorio() {
    final TextEditingController controller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Agregar Recordatorio'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(hintText: 'Escribe el recordatorio aquí'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _reminders[_selectedDay] = controller.text;
                });
                Navigator.pop(context);
              },
              child: const Text('Guardar'),
            ),
          ],
        );
      },
    );
  }
}
