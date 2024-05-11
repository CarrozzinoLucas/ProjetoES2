import 'package:flutter/material.dart';

class DestinationInput extends StatelessWidget {
  final String label;
  final IconData? prefixIconData;
  final double iconSize;
  final void Function(String)? onSubmitted;
  
  const DestinationInput({
    required this.label,
    this.prefixIconData,
    this.iconSize = 16.0,
    this.onSubmitted,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController controller_ = TextEditingController();

    return SizedBox(
      width: 328, 
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          border: Border.all(color: const Color(0xFFD9D9D9)),
          color: const Color(0xFFF9FAFB),
        ),
        child: TextField(
          controller: controller_,
          onSubmitted: onSubmitted,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
            labelText: label,
            hintText: '',
            border: InputBorder.none,
            prefixIcon: prefixIconData != null
                ? Icon(
                    prefixIconData,
                    size: iconSize,
                    color: const Color(0XFF79747E),
                  )
                : null,
            prefixIconConstraints: const BoxConstraints(minWidth: 64),
            // floatingLabelBehavior: FloatingLabelBehavior.always,
            labelStyle: const TextStyle(
                // height: 2,
                ),
          ),
        ),
      ),
    );
  }
}
