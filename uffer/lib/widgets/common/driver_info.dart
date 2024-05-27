import 'package:flutter/material.dart';
import 'package:uffer/widgets/common/car_plate.dart';

class InfoHeader extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? plateNumber;

  const InfoHeader({
    Key? key,
    required this.title,
    this.subtitle,
    this.plateNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Roboto'),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            if (subtitle != null)
              Text(
                subtitle!,
                style: const TextStyle(fontSize: 14, color: Color(0xFF79747E)),
              ),
            if (plateNumber != null) ...[
              const SizedBox(width: 16),
              CarPlateWidget(plateNumber: plateNumber!),
            ]
          ],
        ),
      ],
    );
  }
}
