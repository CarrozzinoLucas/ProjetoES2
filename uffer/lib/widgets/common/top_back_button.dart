import 'package:flutter/material.dart';

class TopBackButton extends StatelessWidget {
  final Color? color;

  const TopBackButton({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      left: 20,
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          backgroundColor: color ?? Colors.white,
          radius: 24,
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
