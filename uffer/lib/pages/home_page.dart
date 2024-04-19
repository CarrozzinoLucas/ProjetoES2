import 'package:firebase_auth/firebase_auth.dart';
import 'package:uffer/pages/auth.dart';
import 'package:flutter/material.dart';
import 'package:uffer/widgets/banner.dart';
import 'package:uffer/widgets/bottom_navigation_bar.dart';
import 'package:uffer/widgets/service.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home Page'),
      // ),
      body: Column(
        children: <Widget>[
          BannerWidget(),
          SizedBox(
            height: 20, // Adicione uma margem inferior ao banner
            child: Divider(
              thickness: 6, // Define a espessura da linha
              color: Color(0xFFEAEAEA), // Cor da linha
            ),
          ),
          ServiceSection(), // Adicione o conteúdo abaixo da linha divisória
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
