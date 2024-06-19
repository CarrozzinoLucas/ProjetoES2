import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uffer/pages/add_saved_place_page.dart';
import 'package:uffer/widgets/common/action_painel.dart';
import 'package:uffer/widgets/common/blue_button.dart';
import 'package:uffer/widgets/common/destination_input_widget.dart';
import 'package:uffer/widgets/common/map_widget.dart';
import 'package:uffer/widgets/common/top_back_button.dart';
import 'package:uffer/widgets/common/draggable_widget.dart';

class OfferRidePage extends StatelessWidget {
  final initialCameraPosition = const CameraPosition(
    target: LatLng(-22.90152056342056, -43.12411775370665),
    zoom: 11.0,
  );
  const OfferRidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          MapWidget(initialCameraPosition: initialCameraPosition),
          const DraggableWidget(
            initialChildSize: 1,
            minChildSize: 0.3,
            maxChildSize: 1,
            body: Column(
              children: [
                Column(
                  children: [
                    Text(
                      'Crie sua carona',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                DestinationInput(label: 'Origem'),
                DestinationInput(label: 'Parada'),
                DestinationInput(label: 'Destino'),
                BlueButton(buttonLabel: 'Continuar'),
              ],
            ),
          ),
          const Positioned(
            top: 50,
            left: 20,
            child: TopBackButton(
              color: Color(0XFFEAEAEA),
            ),
          ),
        ],
      ),
    );
  }
}
