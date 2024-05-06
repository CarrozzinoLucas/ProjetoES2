import 'package:flutter/material.dart';

class CarPlateWidget extends StatelessWidget {
  final String plateNumber;

  const CarPlateWidget({Key? key, required this.plateNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE7EEFF), // Azul claro
        border: Border.all(color: const Color(0xFF66B2FF)), // Borda azul
        borderRadius: BorderRadius.circular(8), // Borda arredondada
      ),
      padding: const EdgeInsets.all(8),
      child: Text(
        plateNumber,
        style: TextStyle(
          color: const Color(0xFF004F9F), // Azul escuro
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
