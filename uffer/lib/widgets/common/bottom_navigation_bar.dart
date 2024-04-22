import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class AppIcon extends StatelessWidget {
  final Color? color;
  final IconData symbol;

  const AppIcon({super.key, required this.symbol, this.color});

  @override
  Widget build(BuildContext context) {
    return Icon(
      symbol,
      size: 32,
      weight: 400,
      opticalSize: 24,
      color: color ?? Theme.of(context).primaryColor,
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const [
        NavigationDestination(
          icon: AppIcon(symbol: Symbols.home),
          label: 'Home',
        ),
        NavigationDestination(
          icon: AppIcon(symbol: Symbols.handshake),
          label: 'Caronas',
        ),
        NavigationDestination(
          icon: AppIcon(symbol: Symbols.person),
          label: 'Perfil',
        ),
      ],
    );
  }
}
