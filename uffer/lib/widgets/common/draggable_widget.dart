import 'package:flutter/material.dart';

class DraggableWidget extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Widget? body;
  final double initialChildSize;
  final double minChildSize;
  final double maxChildSize;

  const DraggableWidget({
    this.title,
    this.subtitle,
    this.body,
    required this.initialChildSize,
    required this.minChildSize,
    required this.maxChildSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: DraggableScrollableSheet(
        initialChildSize: initialChildSize,
        minChildSize: minChildSize,
        maxChildSize: maxChildSize,
        builder: (BuildContext context, ScrollController scrollController) {
          return ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
            child: Container(
              color: Colors.white,
              child: ListView(
                padding: const EdgeInsets.only(
                  top: 16, // header padding
                  bottom: 100,
                ),
                controller: scrollController,
                children: [
                  const DragHandle(),
                  // Title & Subtitle
                  SizedBox(
                    height: 32, // space between header and body
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
                    child: body ?? const SizedBox.shrink(),
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

class DragHandle extends StatelessWidget {
  const DragHandle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 40,
        height: 6,
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    );
  }
}
