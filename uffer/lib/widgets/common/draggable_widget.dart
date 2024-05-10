import 'package:flutter/material.dart';

class DraggableWidget extends StatelessWidget {
  final VoidCallback onButtonPressed;
  final String? title;
  final String? subtitle;
  final Widget? body;

  const DraggableWidget({
    required this.onButtonPressed,
    this.title,
    this.subtitle,
    this.body,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragStart: (_) {}, // Add functionality for drag start if needed
      child: DraggableScrollableSheet(
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
                  // Drag Handle
                  Center(
                    child: Container(
                      width: 40,
                      height: 6,
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                  // Title & Subtitle
                  SizedBox(
                    height: 32, // space between header and body
                    width: double.infinity,
                    child: Column(
                      children: [
                        if (title != null) ...[
                          Text(
                            title!,
                            style: const TextStyle(
                              color: Color(0xFF004F9F),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                        if (subtitle != null) ...[
                          const SizedBox(
                              height: 8), // space between title and subtitle
                          Text(
                            subtitle!,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  // Body
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 24,
                      left: 24,
                      bottom: 24,
                    ), // body padding
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Body
                        body ?? const SizedBox.shrink(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
