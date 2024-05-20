import 'package:flutter/material.dart';
import 'package:uffer/pages/auth.dart';
import 'package:uffer/widgets/common/action_painel.dart';
import 'package:uffer/widgets/common/bottom_navigation_bar.dart';
import 'package:uffer/widgets/common/rounded_square_button.dart';
import 'package:uffer/widgets/home/top_bar.dart';

void main() {
  runApp(const ProfilePage());
}

Future<void> signOut() async {
  await Auth().signOut();
}

Widget _signOutButton(BuildContext context) {
  return ActionPainel(
    options: const [Option(label: 'Sign Out', rightIconData: Icons.close)],
    onPressed: () async {
      await signOut();
      Navigator.pop(context);
    },
  );
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TopBarWidget(),
          Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  RoundedSquareButton(
                      iconData: Icons.assignment_outlined,
                      outerLabel: 'Atividade',
                      onPressed: () {}),
                  const SizedBox(width: 16),
                  RoundedSquareButton(
                      iconData: Icons.thumb_up_alt_outlined,
                      outerLabel: 'Em aberto',
                      onPressed: () {}),
                  const SizedBox(width: 16),
                  RoundedSquareButton(
                      iconData: Icons.directions_car_filled_outlined,
                      outerLabel: 'Em aberto',
                      onPressed: () {}),
                ]),
                const SizedBox(height: 32),
                ActionPainel(
                  options: [
                    Option(
                      label: 'Meus dados',
                      leftIconData: Icons.person_outline,
                      rightIconData: Icons.arrow_forward_ios,
                      onPressed: () {
                        print('Option 1 selected');
                      },
                    ),
                    Option(
                      label: 'Meus carros',
                      leftIconData: Icons.directions_car_filled_outlined,
                      rightIconData: Icons.arrow_forward_ios,
                      onPressed: () {
                        print('Option 2 selected');
                      },
                    ),
                    Option(
                      label: 'Locais salvos',
                      leftIconData: Icons.star_border,
                      rightIconData: Icons.arrow_forward_ios,
                      onPressed: () {
                        print('Option 3 selected');
                      },
                    ),
                    Option(
                      label: 'Configurações',
                      leftIconData: Icons.settings_outlined,
                      rightIconData: Icons.arrow_forward_ios,
                      onPressed: () {
                        print('Option 3 selected');
                      },
                    ),
                    Option(
                      label: 'Entrar em contato conosco',
                      leftIconData: Icons.chat_bubble_outline_outlined,
                      rightIconData: Icons.arrow_forward_ios,
                      onPressed: () {
                        print('Option 3 selected');
                      },
                    ),
                  ],
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
                _signOutButton(context),
              ]))
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
