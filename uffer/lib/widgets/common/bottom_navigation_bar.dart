import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('lib/images/home.svg', width: 15, height: 30),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('lib/images/handshake.svg', width: 30, height: 30),
          label: 'Caronas',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('lib/images/person.svg', width: 15, height: 30),
          label: 'Perfil',
        ),
      ],
      selectedItemColor: const Color(
          0xFF415F91), // Define a cor do texto quando o item é selecionado
      unselectedItemColor: const Color(
          0xFF415F91), // Define a cor do texto quando o item não está selecionado
      selectedLabelStyle: const TextStyle(
        fontFamily: 'Barlow',
        fontWeight: FontWeight.w500,
        fontSize: 12,
      ),
      unselectedLabelStyle: const TextStyle(
        fontFamily: 'Barlow',
        fontWeight: FontWeight.w500,
        fontSize: 12,
      ),
    );
  }
}
