import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:uffer/pages/home_page.dart';
import 'package:uffer/pages/list_rides_page.dart';
import 'package:uffer/pages/profile_page.dart';

class AppIcon extends StatelessWidget {
  final Color? color;
  final IconData symbol;

  const AppIcon({super.key, required this.symbol, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFF004F9F), width: 2),
      ),
      child: Center(
        child: Icon(
          symbol,
          size: 32,
          color: color ?? Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 92,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      indicatorColor: Colors.white,
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
      onDestinationSelected: (index) {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const HomePage(),
                transitionDuration: Duration.zero,
              ),
            );
          case 1:
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const ListRidesPage(),
                transitionDuration: Duration.zero,
              ),
            );
          case 2:
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const ProfilePage(),
                transitionDuration: Duration.zero,
              ),
            );
        }
      },
    );
  }
}
