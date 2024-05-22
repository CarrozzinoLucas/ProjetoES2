import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uffer/pages/home_page.dart';
import 'package:uffer/pages/list_saved_places_page.dart';
import 'package:uffer/widgets/common/action_painel.dart';
import 'package:uffer/widgets/common/blue_button.dart';
import 'package:uffer/widgets/common/map_widget.dart';
import 'package:uffer/widgets/common/rounded_square_button.dart';
import 'package:uffer/widgets/common/top_back_button.dart';
import 'package:uffer/widgets/common/draggable_widget.dart';

class CanceledRidePage extends StatelessWidget {
  final initialCameraPosition = const CameraPosition(
    target: LatLng(-22.90152056342056, -43.12411775370665),
    zoom: 11.0,
  );
  const CanceledRidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          MapWidget(initialCameraPosition: initialCameraPosition),
          const TopBackButton(),
          DraggableWidget(
            initialChildSize: 0.35,
            minChildSize: 0.3,
            maxChildSize: 0.8,
            body: Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedSquareButton(
                    iconData: Icons.not_interested,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 23,
              ),
              const Column(
                children: [
                  Text(
                    'Sua carona foi cancelada com sucesso',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              BlueButton(
                buttonLabel: 'Ok',
                onPressed: () => {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const HomePage(),
                      transitionDuration: Duration.zero,
                    ),
                  )
                },
              )
            ]),
          ),
        ],
      ),
    );
  }
}
