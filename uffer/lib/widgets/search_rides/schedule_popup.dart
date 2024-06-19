import 'package:flutter/material.dart';
import 'package:uffer/widgets/common/rounded_rectangle_button.dart';
import 'package:uffer/widgets/common/rounded_square_button.dart';
import 'date_picker_popup.dart';
import 'clock_popup.dart';

class SchedulePopup extends StatefulWidget {
  const SchedulePopup({super.key});

  @override
  _SchedulePopupState createState() => _SchedulePopupState();
}

class _SchedulePopupState extends State<SchedulePopup> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showModalBottomSheet<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return const DatePickerPopup();
      },
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showDialog<TimeOfDay>(
      context: context,
      builder: (BuildContext context) {
        return ClockPopup();
      },
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
      backgroundColor: Colors.white,
      title: const Text('Agende sua carona'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RoundedRectangleButton(
            icon: const Icon(Icons.calendar_month_outlined,
                color: Color(0xFF004F9F)),
            onPressed: () => _selectDate(context),
            label: _selectedDate != null
                ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                : 'Escolher dia',
          ),
          const SizedBox(height: 16),
          RoundedRectangleButton(
            icon: const Icon(Icons.access_time, color: Color(0xFF004F9F)),
            onPressed: () => _selectTime(context),
            label: _selectedTime != null
                ? _selectedTime!.format(context)
                : 'Escolher hora',
          ),
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
            Navigator.of(context).pop(
              {'date': _selectedDate, 'time': _selectedTime},
            ); // Retorna o dia e a hora selecionados
          },
          child: const Text('Concluído'),
        ),
      ],
    );
  }
}
