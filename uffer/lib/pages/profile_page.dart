import 'package:uffer/pages/auth.dart';
import 'package:flutter/material.dart';
import 'package:uffer/widgets/common/bottom_navigation_bar.dart';

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
        children: [_signOutButton()],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
