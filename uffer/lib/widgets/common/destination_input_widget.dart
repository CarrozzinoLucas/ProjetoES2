import 'package:flutter/material.dart';

class DestinationInput extends StatelessWidget {
  final String label;

  const DestinationInput({
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
        hintText: '',
      ),
    );
  }
}
