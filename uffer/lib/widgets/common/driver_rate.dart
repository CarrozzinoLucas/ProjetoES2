import 'package:flutter/material.dart';
import 'package:uffer/widgets/common/star_rate.dart';

class UserPhotoAndRateWidget extends StatelessWidget {
  final String name;
  final Color? starRateColor;

  const UserPhotoAndRateWidget({
    Key? key,
    required this.name,
    this.starRateColor, // Removido o valor padrão null
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: const Color(0XFFD9D9D9),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF44474E)),
                ),
              ],
            ),
            const SizedBox(height: 8),
            StarRate(
              color: starRateColor ?? const Color(0XFFEFCC81), // Usando a cor padrão do StarRate se não for especificada
              rating: 4.5,
            ),
          ],
        ),
      ),
    );
  }
}
