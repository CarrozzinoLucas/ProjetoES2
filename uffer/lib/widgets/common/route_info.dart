import 'package:flutter/material.dart';

class RouteInfo extends StatelessWidget {
  const RouteInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFEFEFF6), // Cor de fundo
        border: Border.all(
          color: Color(0xFFD9D9D9), // Cor da borda
          width: 3, // Largura da borda
        ),
        borderRadius: BorderRadius.circular(12), // Borda arredondada
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rota da carona até o momento', // Texto no topo
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16), // Espaço entre os textos

          // Container para as informações da rota
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              color: Color(0xFFEFEFF6), // Cor de fundo do container interno
              borderRadius: BorderRadius.circular(8), // Borda arredondada
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Linha vertical
                Container(
                  width: 2,
                  height: 80, // Altura da linha
                  color: Colors.grey, // Cor da linha
                  margin: EdgeInsets.only(right: 16), // Margem à direita
                ),
                // Textos da rota
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Plaza Shopping Niteroi',
                      style: TextStyle(
                        fontSize: 14,

                        color: Color(0xFF74777F), // Cor do texto
                      ),
                    ),
                    SizedBox(height: 4), // Espaço entre os textos
                    Text(
                      'R. Dr. Tavares de Macedo, 222',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF74777F), // Cor do texto
                      ),
                    ),
                    SizedBox(height: 4), // Espaço entre os textos
                    Text(
                      'UFF - Praia Vermelha',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF74777F), // Cor do texto
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Container para o ícone de pessoa e o texto "2/5"
          Row(
            children: [
              Icon(
                Icons.person_outlined, // Ícone de pessoa
                color: Color(0xFF004F9F), // Cor do ícone
              ),
              SizedBox(width: 8), // Espaço entre o ícone e o texto
              Text(
                '2/5', // Texto "2/5"
                style: TextStyle(
                  color: Color(0xFF74777F), // Cor do texto
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.access_time, // Ícone de pessoa
                color: Color(0xFF004F9F), // Cor do ícone
              ),
              SizedBox(width: 8), // Espaço entre o ícone e o texto
              Text(
                '8:40', // Texto "2/5"
                style: TextStyle(
                  color: Color(0xFF74777F), // Cor do texto
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
