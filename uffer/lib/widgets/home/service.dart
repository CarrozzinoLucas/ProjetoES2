import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TODO: TIRAR ESSE STYLING DAQUI
          const Text(
            'Serviços',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w800,
              fontFamily: 'Barlow',
              color: Color(0xFF004F9F),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                  child: ServiceButton(
                icon: const Icon(
                  Symbols.thumb_up,
                  size: 32,
                  weight: 400,
                  opticalSize: 24,
                ),
                label: "Pedir Carona",
                onPressed: () => {},
              )),
              const SizedBox(width: 16),
              Expanded(
                  child: ServiceButton(
                icon: const Icon(
                  Symbols.directions_car,
                  size: 32,
                  weight: 400,
                  opticalSize: 24,
                ),
                label: "Oferecer Carona",
                onPressed: () => {},
              )),
            ],
          ),
        ],
      ),
    );
  }
}

class ServiceButton extends StatelessWidget {
  final String label;
  final Icon icon;
  final void Function()? onPressed;

  const ServiceButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: SizedBox(
        height: 128,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(height: 8),
            Text(label),
          ],
        ),
      ),
    );
  }
}
