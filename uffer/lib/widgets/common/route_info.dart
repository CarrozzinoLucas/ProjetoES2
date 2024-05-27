import 'package:flutter/material.dart';
import 'package:uffer/widgets/common/ride_details_info.dart';

class RouteInfo extends StatelessWidget {
  const RouteInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFEFEFF6), // Cor de fundo
        border: Border.all(
          color: const Color(0xFFD9D9D9), // Cor da borda
          width: 1, // Largura da borda
        ),
        borderRadius: BorderRadius.circular(12), // Borda arredondada
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Rota até o momento', // Texto no topo
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0XFF44474E)),
          ),
          const SizedBox(height: 16), // Espaço entre os textos

          // Container para as informações da rota
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              color: const Color(0xFFEFEFF6), // Cor de fundo do container interno
              borderRadius: BorderRadius.circular(8), // Borda arredondada
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Linha vertical
                Container(
                  width: 1,
                  height: 80, // Altura da linha
                  color: Colors.grey, // Cor da linha
                  margin: const EdgeInsets.only(right: 16), // Margem à direita
                ),
                // Textos da rota
                const Column(
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
          const RideDetailsInfo(info: '2/5', iconData: Icons.person_outline),
          const SizedBox(height: 8),
          const RideDetailsInfo(info: '8:40', iconData: Icons.access_time),
        ],
      ),
    );
  }
}
