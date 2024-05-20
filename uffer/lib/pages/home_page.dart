import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uffer/pages/auth.dart';
import 'package:uffer/widgets/common/action_painel.dart';
import 'package:uffer/widgets/home/banner.dart';
import 'package:uffer/widgets/common/bottom_navigation_bar.dart';
import 'package:uffer/widgets/home/service.dart';
import 'package:uffer/widgets/home/top_bar.dart'; // Importe o widget TopBarWidget

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
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF004F9F),
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white));

    return Scaffold(
      body: ListView(
        children: [
          const TopBarWidget(),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Explore nossos serviços',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Barlow',
                  ),
                ),
                const SizedBox(height: 16),
                const BannerWidget(),
                const SizedBox(height: 16),
                const ServiceSection(),
                const SizedBox(height: 24),
                const Text(
                  'Repita suas últimas caronas',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Barlow',
                  ),
                ),
                const SizedBox(height: 24),
                ActionPainel(
                  options: const [
                    Option(
                        label: 'Icaraí - UFF Praia Vermelha',
                        sublabel: '8:30h, 1 passageiro',
                        leftIconData: Icons.directions_car_filled_outlined,
                        rightIconData: Icons.arrow_forward_ios),
                    Option(
                        label: 'São Francisco - UFF Valonguinho',
                        sublabel: '10:30h, 2 passageiros',
                        leftIconData: Icons.directions_car_filled_outlined,
                        rightIconData: Icons.arrow_forward_ios),
                  ],
                  onPressed: () {
                    print('Painel pressionado!');
                  },
                ),
                // _signOutButton(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
