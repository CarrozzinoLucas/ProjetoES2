import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TODO: TIRAR ESSE STYLING DAQUI
          Text(
            'Serviços',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w800,
              fontFamily: 'Barlow',
              color: Color(0xFF004F9F),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                  child: ServiceButton(
                icon: Icons.access_time_sharp,
                label: "Pedir Carona",
              )),
              SizedBox(width: 16),
              Expanded(
                  child: ServiceButton(
                icon: Icons.access_time_sharp,
                label: "Oferecer Carona",
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
  final IconData icon;

  const ServiceButton({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: SizedBox(
        height: 128,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32),
            const SizedBox(height: 8),
            Text(label),
          ],
        ),
      ),
    );
  }
}
