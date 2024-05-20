import 'package:flutter/material.dart';

class CarPlateWidget extends StatelessWidget {
  final String plateNumber;

  const CarPlateWidget({Key? key, required this.plateNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE7EEFF), 
        border: Border.all(color: const Color(0xFF66B2FF), width: 0.5),
        borderRadius: BorderRadius.circular(2), // Borda arredondada
      ),
      padding: const EdgeInsets.only(
        top: 2,
        bottom: 2,
        left: 4,
        right: 4),
      child: Text(
        plateNumber,
        style: const TextStyle(
          color: Color(0xFF004F9F), // Azul escuro
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
