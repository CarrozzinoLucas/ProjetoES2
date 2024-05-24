import 'package:flutter/material.dart';
import 'package:uffer/widgets/common/action_painel.dart';
import 'package:uffer/widgets/common/bottom_navigation_bar.dart';
import 'package:uffer/widgets/common/destination_input_widget.dart';
import 'package:uffer/widgets/common/rounded_square_button.dart';
import 'package:uffer/widgets/common/top_back_button.dart';
import 'package:uffer/widgets/home/top_bar.dart';

class GroupChatPage extends StatelessWidget {
  const GroupChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TopBarWidget(),
          TopBackButton(),
          Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(children: [
                DestinationInput(label: '', prefixIconData: Icons.send),

              ]))
        ],
      ),
    );
  }
}
