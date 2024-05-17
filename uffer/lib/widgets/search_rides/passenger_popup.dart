import 'package:flutter/material.dart';
import 'package:uffer/widgets/common/blue_button.dart';

class PassengerPopup extends StatelessWidget {
  const PassengerPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Quantidade de Passageiros'),
      content: Text('- 2 +'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: BlueButton(buttonLabel: 'Concluído'),
        ),
      ],
    );
  }
}
