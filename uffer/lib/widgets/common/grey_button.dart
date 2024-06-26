import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

// TODO: make this pretty
class GreyButton extends StatelessWidget {
  final String buttonLabel;
  const GreyButton({required this.buttonLabel, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0),
          backgroundColor:
              MaterialStateProperty.all<Color>(const Color(0xFFEAEAEA)),
          minimumSize: MaterialStateProperty.all<Size>(const Size(0, 48)),
        ),
        child: Row(children: [
          const Icon(Symbols.clock_loader_10),
          Text(
            buttonLabel,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF004F9F),
            ),
          ),
        ]));
  }
}
