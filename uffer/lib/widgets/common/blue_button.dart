import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  final String buttonLabel;
  const BlueButton({required this.buttonLabel, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0),
        backgroundColor: MaterialStateProperty.all<Color>(
            const Color(0xFF004F9F)), // TODO: pegar essas cores da lib
        minimumSize:
            MaterialStateProperty.all<Size>(const Size(double.infinity, 48)),
      ),
      child: Text(
        buttonLabel,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
