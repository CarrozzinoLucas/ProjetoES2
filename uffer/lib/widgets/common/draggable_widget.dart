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
    // TODO: adicionar linha horizontal (pra mostrar que o widget é draggable) (exemplo em: https://medium.com/@rishi_singh/create-a-draggable-scrollable-bottomsheet-with-flutter-0ec50d93a3b9)
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
                  padding: const EdgeInsets.only(
                    top: 34, // header padding
                    bottom: 100,
                  ),
                  controller: scrollController,
                  children: [
                    // const Divider(thickness: 4, endIndent: 390),
                    SizedBox(
                      // height não pode ser menor que 73px, se não da overflow
                      height: 80, // space between header and body
                      width: double.infinity,
                      child: Column(
                        children: [
                          // title & optional subtitle
                          Text(
                            title,
                            style: const TextStyle(
                              color: Color(0xFF004F9F),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (subtitle != null)
                          const SizedBox(height: 8), // space between title and subtitle
                            Text(
                              subtitle!,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                        ],
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                        right: 24,
                        left: 24,
                        bottom: 24,
                      ), // body padding
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // body
                          // TODO: add gap between body elements
                          if (body != null) ...body!,
                          // blue button
                          const SizedBox(height: 24), // space between body and blue button
                          BlueButton(buttonLabel: buttonLabel),
                        ],
                      ),
                    ),
                  ],
                )));
      },
    );
  }
}
