import 'package:uffer/pages/auth.dart';
import 'package:flutter/material.dart';
import 'package:uffer/widgets/home/banner.dart';
import 'package:uffer/widgets/common/bottom_navigation_bar.dart';
import 'package:uffer/widgets/home/service.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        children: <Widget>[
          const BannerWidget(),
          const SizedBox(
            height: 20,
            child: Divider(
              thickness: 6, 
              color: Color(0xFFEAEAEA),
            ),
          ),
          const ServiceSection(),
          _signOutButton()
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}