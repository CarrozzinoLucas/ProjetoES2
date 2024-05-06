import 'package:flutter/material.dart';
import 'package:uffer/pages/auth.dart';
import 'package:uffer/widgets/home/banner.dart';
import 'package:uffer/widgets/common/bottom_navigation_bar.dart';
import 'package:uffer/widgets/home/service.dart';
import 'package:uffer/widgets/home/top_bar.dart'; // Importe o widget TopBarWidget

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  Widget _signOutButton() {
    return ElevatedButton(
      onPressed: signOut,
      child: const Text('Sign Out'),
    );
  }

  Future<void> signOut() async {
    await Auth().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBarWidget(), // Chamada do widget TopBarWidget
          //

          const ServiceSection(),
          const SizedBox(
            height: 1, // Defina a altura desejada aqui
          ),
          const BannerWidget(),

          _signOutButton(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
