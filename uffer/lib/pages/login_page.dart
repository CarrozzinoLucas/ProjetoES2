import 'package:flutter/material.dart';
import 'package:uffer/pages/home_page.dart';
import 'package:uffer/widgets/login/google_sign_in_button.dart';
import 'package:uffer/widgets/common/logo_widget.dart';
import 'package:uffer/widgets/home/top_bar.dart'; // Importe o widget TopBarWidget
import 'package:uffer/services/auth_service.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Aqui está o novo widget TopBarWidget
          const SizedBox(height: 20),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const LogoWidget(),
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    // Navegar para a página de home ao clicar no botão
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  child: Text('Entrar com Google'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
