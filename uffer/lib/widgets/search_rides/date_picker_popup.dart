import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePickerPopup extends StatefulWidget {
  const DatePickerPopup({super.key});

  @override
  _DatePickerPopupState createState() => _DatePickerPopupState();
}

class _DatePickerPopupState extends State<DatePickerPopup> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Selecione a Data'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.of(context).pop(_selectedDate);
          },
          child: const Text('Selecionar'),
        ),
      ),
      child: Container(
        height: 250,
        color: CupertinoColors.white,
        child: Column(
          children: [
            Expanded(
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: _selectedDate,
                onDateTimeChanged: (DateTime newDate) {
                  setState(() {
                    _selectedDate = newDate;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
