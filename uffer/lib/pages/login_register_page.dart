import 'package:firebase_auth/firebase_auth.dart';
import 'package:uffer/pages/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Importe flutter_svg

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              'images/logo-uffer.svg', // Caminho para o arquivo SVG
              width: 150.0, // Defina uma largura adequada
              height: 150.0, // Defina uma altura adequada
            ),
            SizedBox(height: 50), // Espaçamento entre o logo e o botão
            OutlinedButton.icon(
              icon: Image.asset(
                'images/google-logo.png', // Caminho para o arquivo PNG do logo do Google
                width: 24.0, // Largura da imagem
                height: 24.0, // Altura da imagem
                // Cor da imagem, se necessário
              ),
              label: Text(
                'Entrar com Google',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500, // médio
                  fontSize: 16.0, // tamanho da fonte
                ),
              ),
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                minimumSize: Size(200, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
