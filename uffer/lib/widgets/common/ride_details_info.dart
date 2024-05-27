import 'package:flutter/material.dart';

class RideDetailsInfo extends StatelessWidget {
  final Color color;
  final String info;
  final IconData iconData;

  const RideDetailsInfo({
    Key? key,
    this.color = const Color(0XFF004F9F),
    required this.info,
    required this.iconData,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            color: color,
            size: 20,
          ),
          const SizedBox(width: 4),
          Text(
            info,
            style: const TextStyle(fontSize: 14, color: Color(0XFF44474E)),
          ),
        ]
    );
  }
}
