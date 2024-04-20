import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uffer/services/auth_service.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({
    super.key, required Function() onPressed,
  });
  
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: SvgPicture.asset(
        'lib/images/google-logo.svg', 
        width: 24.0, 
        height: 24.0, 
      ),
      label: const Text(
        'Entrar com Google',
        style: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500, 
          fontSize: 16.0, 
        ),
      ),
      onPressed: () => AuthService().signInWithGoogle(),
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        minimumSize: const Size(200, 50),
      ),
    );
  }
}