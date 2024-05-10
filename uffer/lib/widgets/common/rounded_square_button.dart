import 'package:flutter/material.dart';

class RoundedSquareButton extends StatelessWidget {
  final Widget innerLabel;
  final VoidCallback onPressed;
  final double borderRadius;
  final double size;
  final String? outerLabel;

  const RoundedSquareButton({
    required this.innerLabel,
    required this.onPressed,
    this.borderRadius = 16.0,
    this.size = 72.0,
    this.outerLabel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size,
            height: size,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF9FAFB),
                borderRadius: BorderRadius.circular(borderRadius),
                border: Border.all(color: const Color(0xFFD9D9D9)),
              ),
              child: Center(child: innerLabel),
            ),
          ),
          if (outerLabel != null) Text(
            outerLabel!,
            style: const TextStyle(
              color: Color(0XFF44474E),
            ),
            ),
        ],
      ),
    );
  }
}
