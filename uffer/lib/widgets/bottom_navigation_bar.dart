import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Image.asset('images/home.png', width: 30, height: 30),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('images/handshake.png', width: 30, height: 30),
          label: 'Caronas',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('images/person.png', width: 30, height: 30),
          label: 'Perfil',
        ),
      ],
      selectedItemColor: Color(
          0xFF415F91), // Define a cor do texto quando o item é selecionado
      unselectedItemColor: Color(
          0xFF415F91), // Define a cor do texto quando o item não está selecionado
      selectedLabelStyle: TextStyle(
        fontFamily: 'Barlow',
        fontWeight: FontWeight.w500,
        fontSize: 12,
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: 'Barlow',
        fontWeight: FontWeight.w500,
        fontSize: 12,
      ),
    );
  }
}
