import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 56.0, horizontal: 20.0),
      color: Color(0xFF004F9F), // Cor azul desejada
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.end, // Alinhar os elementos ao final
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white, // Cor de fundo do círculo
                child: Icon(
                  Icons
                      .person, // Ícone de usuário, você pode substituir por uma imagem
                  size: 40, // Tamanho do ícone
                  color: Color(0xFF004F9F), // Cor do ícone
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Olá,', // Texto do título
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Nome!', // Texto do nome
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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
