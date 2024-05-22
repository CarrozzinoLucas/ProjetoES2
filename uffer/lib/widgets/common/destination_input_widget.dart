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
      constraints: const BoxConstraints(maxWidth: 600),
      child: TextField(
        controller: controller_,
        focusNode: focusNode, // Definindo o focusNode
        onSubmitted: onSubmitted,
        onTap: onTap,
        decoration: InputDecoration(
          fillColor: const Color(0xFFF9FAFB),
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
          labelText: label,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFE7E8EE)),
              borderRadius: BorderRadius.all(Radius.circular(100))),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(100))),
          prefixIcon: prefixIconData != null
              ? Icon(
                  prefixIconData,
                  size: iconSize,
                  color: const Color(0XFF79747E),
                )
              : null,
        ),
      ),
    );
  }
}
