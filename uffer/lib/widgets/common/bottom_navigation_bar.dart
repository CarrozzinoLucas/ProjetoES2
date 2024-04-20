import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(
          icon: SvgPicture.asset('lib/images/home.svg', width: 15, height: 30),
          label: 'Home',
        ),
        NavigationDestination(
          icon: SvgPicture.asset('lib/images/handshake.svg', width: 30, height: 30),
          label: 'Caronas',
        ),
        NavigationDestination(
          icon: SvgPicture.asset('lib/images/person.svg', width: 15, height: 30),
          label: 'Perfil',
        ),
      ],
    );
  }
}
