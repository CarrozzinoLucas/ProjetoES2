import 'package:flutter/material.dart';
import 'package:uffer/widgets/common/car_plate.dart';

class DriverStatusInfoWidget extends StatelessWidget {
  final String carInfo;
  final String plateNumber;

  const DriverStatusInfoWidget({
    Key? key,
    required this.carInfo,
    required this.plateNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'O motorista está a caminho',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Roboto'),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Text(
              carInfo,
              style: const TextStyle(fontSize: 14, color: Color(0xFF79747E)),
            ),
            const SizedBox(width: 16),
            CarPlateWidget(plateNumber: plateNumber),
          ],
        ),
      ],
    );
  }
}
