import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:uffer/pages/search_rides_page.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TODO: TIRAR ESSE STYLING DAQUI

          Row(
            children: [
              Expanded(
                child: ServiceButton(
                  icon: const Icon(
                    Symbols.handshake,
                    size: 32,
                    weight: 400,
                    opticalSize: 24,
                  ),
                  label: "Dicas de Convivencia",
                  onPressed: () => {
                    Navigator.push(
                      context,
                      // MaterialPageRoute(builder: (context) => MapPage()),
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const SearchRidesPage(),
                        transitionDuration: Duration.zero,
                      ),
                    )
                  },
                ),
              ),
            ],
          ),
        ],
      );
  }
}

class ServiceButton extends StatelessWidget {
  final String label;
  final Icon icon;
  final void Function()? onPressed;

  const ServiceButton({
    Key? key,
    required this.label,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: const Color(0xFFC7E3FF), // Cor de fundo
        elevation: 0
      ),
      child: SizedBox(
        height: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(height: 8),
            Text(label, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
