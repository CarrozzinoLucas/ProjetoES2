import 'package:uffer/pages/auth.dart';
import 'package:flutter/material.dart';
import 'package:uffer/widgets/common/action_painel.dart';
import 'package:uffer/widgets/common/bottom_navigation_bar.dart';
import 'package:uffer/widgets/common/rounded_square_button.dart';

void main() {
  runApp(const ProfilePage());
}

Widget _signOutButton() {
  return const ElevatedButton(
    onPressed: signOut,
    child: Text('Sign Out'),
  );
}

Future<void> signOut() async {
  await Auth().signOut();
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              RoundedSquareButton(innerLabel: Icon(Icons.list), onPressed: (){}),
              RoundedSquareButton(innerLabel: Icon(Icons.thumb_up_alt_outlined), onPressed: (){}),
              RoundedSquareButton(innerLabel: Icon(Icons.directions_car_filled_outlined), onPressed: (){}),
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
                  Option(
                      label: 'Camboinhas - UFF Gragoatá',
                      sublabel: '6:30h, 1 passageiro',
                      leftIconData: Icons.directions_car_filled_outlined,
                      rightIconData: Icons.arrow_forward_ios),
                ],
                onPressed: () {
                  print('Painel pressionado!');
                },
              ),
            ],
          ),
          _signOutButton()],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
