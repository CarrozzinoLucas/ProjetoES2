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
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
            width: width,
            height: height,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF9FAFB),
                borderRadius: BorderRadius.circular(borderRadius),
                border: const Border(
                  top: BorderSide(color: Color(0xFFE7E8EE)),
                  left: BorderSide(color: Color(0xFFE7E8EE)),
                  right: BorderSide(color: Color(0xFFE7E8EE)),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Center(
                      child: Container(
                        width: 40, // Largura do círculo
                        height: 40, // Altura do círculo
                        decoration: const BoxDecoration(
                          color: Color(0xFFE7EEFF), // Cor do círculo
                          shape: BoxShape.circle, // Forma do círculo
                        ),
                        child: Center(child: icon),
                      ),
                    ),
                  ),
                  if (label != null) const SizedBox(width: 8),
                  if (label != null)
                    Text(
                      label!,
                      style: const TextStyle(
                        color: Color(0XFF44474E),
                      ),
                    ),
                ],
              ),
            ))
      ]),
    );
  }
}
