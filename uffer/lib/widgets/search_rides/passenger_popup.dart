import 'package:flutter/material.dart';
import 'package:uffer/widgets/common/blue_button.dart';

class PassengerPopup extends StatefulWidget {
  const PassengerPopup({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PassengerPopupState createState() => _PassengerPopupState();
}

class _PassengerPopupState extends State<PassengerPopup> {
  int _passengerCount = 2;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: const Text(
        'Quantidade de Passageiros',
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                if (_passengerCount > 1) {
                  _passengerCount--;
                }
              });
            },
            icon: const Icon(Icons.remove, size: 32),
          ),
          Text(
            _passengerCount.toString(),
            style: const TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w500,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                if (_passengerCount < 4) {
                  _passengerCount++;
                }
              });
            },
            icon: const Icon(Icons.add, size: 32),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context,
                _passengerCount); // Retorna o número de passageiros ao fechar o popup
          },
          child: const BlueButton(buttonLabel: 'Concluído'),
        ),
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
    );
  }
}
