import 'package:flutter/material.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 150,
                    height: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        // Adicione a ação desejada
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Bordas arredondadas
                        ),
                        backgroundColor: Color(0xFFEAEAEA),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('images/thumb_up.png'), // Ícone
                          SizedBox(
                              height: 8), // Espaçamento entre o ícone e o texto
                          Text(
                            'Pedir Carona',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                              color: Color(0xFF004F9F),
                            ),
                          ), //  // Texto
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 150,
                    height: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        // Adicione a ação desejada
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Bordas arredondadas
                        ),
                        backgroundColor: Color(0xFFEAEAEA),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('images/directions_car.png'), // Ícone
                          SizedBox(
                              height: 8), // Espaçamento entre o ícone e o texto
                          Text(
                            'Oferecer Carona',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                              color: Color(0xFF004F9F),
                            ),
                          ), // Texto
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
