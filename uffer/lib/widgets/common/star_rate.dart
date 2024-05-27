import 'package:flutter/material.dart';

class StarRate extends StatelessWidget {
  final Color color;
  final double rating;

  const StarRate({
    Key? key,
    this.color = const Color(0XFFEFCC81),
    required this.rating,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0XFFEFEFF6),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: color,
            size: 20,
          ),
          const SizedBox(width: 4),
          Text(
            rating.toString(),
            style: const TextStyle(fontSize: 14, color: Color(0XFF44474E)),
          ),
        ],
      ),
    );
  }
}
