import 'package:flutter/material.dart';
import 'package:uffer/components/login/google_sign_in_button.dart';
import 'package:uffer/components/common/logo_widget.dart';
import 'package:uffer/services/auth_service.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const LogoWidget(),
            const SizedBox(height: 50), // Space between logo and button
            GoogleSignInButton(
              onPressed: () => AuthService().signInWithGoogle(),
            ),
          ],
        ),
      ),
    );
  }
}
