import 'package:flutter/material.dart';

class RoundedRectangleButton extends StatelessWidget {
  final Icon icon;
  final VoidCallback onPressed;
  final double borderRadius;
  final double width;
  final double height;
  final String? label;

  const RoundedRectangleButton({
    required this.icon,
    required this.onPressed,
    this.borderRadius = 16.0,
    this.width = 168,
    this.height = 56,
    this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF9FAFB),
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: const Color(0xFFE7E8EE)),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color(0xFFE7EEFF),
                    shape: BoxShape.circle,
                  ),
                  child: Center(child: icon),
                ),
              ),
              if (label != null)
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    label!,
                    style: const TextStyle(
                      color: Color(0XFF44474E),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
