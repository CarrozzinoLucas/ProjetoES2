import 'package:flutter/material.dart';
import 'package:uffer/widgets/common/car_plate.dart';

class DriverStatusInfoWidget extends StatelessWidget {
  final String plateNumber;

  const DriverStatusInfoWidget({
    Key? key,
    required this.plateNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'O motorista está a caminho!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 2),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Tipo do carro, cor do carro',
              style: TextStyle(fontSize: 16, color: Color(0xFF79747E)),
            ),
            const SizedBox(width: 16),
            CarPlateWidget(plateNumber: plateNumber),
          ],
        ),
      ],
    );
  }
}
