import 'package:flutter/material.dart';
import 'package:uffer/widgets/common/blue_button.dart';

class DraggableWidget extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback onButtonPressed;
  final String title;
  final String? subtitle;
  final List<Widget>? body;

  const DraggableWidget({
    required this.buttonLabel,
    required this.onButtonPressed,
    required this.title,
    this.subtitle,
    this.body,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: adicionar sombra no widget
    // TODO: adicionar linha horizontal (pra mostrar que o widget é draggable)
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.3,
      maxChildSize: 0.92,
      builder: (BuildContext context, ScrollController scrollController) {
        return ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            child: Container(
                color: Colors.white,
                child: ListView(
                  controller: scrollController,
                  children: [
                    SizedBox(
                      // TODO: o height está dando overflow em alguns casos, melhorar essa lógica
                      height: 73,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // title & optional subtitle
                          // TODO: deixar title e subtitle centralizados no container
                          Text(
                            title,
                            style: const TextStyle(
                              color: Color(0xFF004F9F),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (subtitle != null)
                            Text(
                              subtitle!,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          const Divider(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // body
                          if (body != null) ...body!,
                          const SizedBox(height: 20),
                          // blue button
                          BlueButton(buttonLabel: buttonLabel),
                        ],
                      ),
                    )
                  ],
                )));
      },
    );
  }
}
