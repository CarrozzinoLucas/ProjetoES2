import 'package:flutter/material.dart';

class ClockPopup extends StatefulWidget {
  const ClockPopup({super.key});

  @override
  _ClockPopupState createState() => _ClockPopupState();
}

class _ClockPopupState extends State<ClockPopup> {
  TimeOfDay _selectedTime = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select time'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () => _selectTime(context),
            child: const Text('Choose Time'),
          ),
          const SizedBox(height: 16),
          Text('Selected time: ${_selectedTime.format(context)}'),
          const Text('Informações adicionais'),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Fecha o pop-up
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context)
                .pop(_selectedTime); // Retorna o horário selecionado
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
