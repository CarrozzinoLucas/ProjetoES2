import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
        constraints: BoxConstraints(maxWidth: 324),
        height: 200, // Altura do banner
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "images/Banner.png"), // Caminho para a imagem do banner
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
