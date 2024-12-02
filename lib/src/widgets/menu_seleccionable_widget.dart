import 'package:flutter/material.dart';

class DropdownMenuWidget extends StatelessWidget {
  final List<String> options;
  final String selectedValue;
  final Function(String?) onChanged;

  const DropdownMenuWidget({
    super.key,
    required this.options,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: selectedValue,
          items: options
              .map((option) => DropdownMenuItem<String>(
            value: option,
            child: Text(option),
          ))
              .toList(),
          onChanged: onChanged,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
