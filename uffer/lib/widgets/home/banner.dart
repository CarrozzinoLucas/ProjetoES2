import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 320.02),
        height: 200,
        child: SvgPicture.asset(
          'lib/images/banner.svg',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
