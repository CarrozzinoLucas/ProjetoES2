import 'package:flutter/material.dart';

class DestinationInput extends StatelessWidget {
  final String label;
  final IconData? prefixIconData;
  final double iconSize;
  final void Function()? onTap;
  final void Function(String)? onSubmitted;
  final FocusNode? focusNode;

  const DestinationInput({
    required this.label,
    this.prefixIconData,
    this.iconSize = 16.0,
    this.onTap,
    this.onSubmitted,
    this.focusNode,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller_ = TextEditingController();

    return Container(
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        border: Border.all(color: const Color(0xFFE7E8EE)),
        color: const Color(0xFFF9FAFB),
      ),
      child: TextField(
        controller: controller_,
        focusNode: focusNode, // Definindo o focusNode
        onSubmitted: onSubmitted,
        onTap: onTap,
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
    );
  }
}
