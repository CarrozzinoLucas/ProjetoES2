import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uffer/pages/available_rides_page.dart';
import 'package:uffer/pages/driver_on_way_page.dart';
import 'package:uffer/pages/ride_not_found_page.dart';
import 'package:uffer/widgets/common/blue_button.dart';
import 'package:uffer/widgets/common/destination_input_widget.dart';
import 'package:uffer/widgets/common/map_widget.dart';
import 'package:uffer/widgets/common/top_back_button.dart';
import 'package:uffer/widgets/common/draggable_widget.dart';

class ConfirmLocalPage extends StatelessWidget {
  final initialCameraPosition = const CameraPosition(
    target: LatLng(-22.90152056342056, -43.12411775370665),
    zoom: 20.0,
  );
  const ConfirmLocalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(children: [
        MapWidget(initialCameraPosition: initialCameraPosition),
        const TopBackButton(),
        DraggableWidget(
          initialChildSize: 0.3,
          minChildSize: 0.3,
          maxChildSize: 0.3,
          body: Column(
            children: [
              const DestinationInput(
                label: 'Endereço',
                prefixIconData: Icons.circle,
                ),
              const SizedBox(height: 24),
              BlueButton(
                buttonLabel: 'Confirmar Local',
                onPressed: () => {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const AvailableRidesPage(),
                      transitionDuration: Duration.zero,
                    ),
                  )
                },
              )
            ],
          ),
        )
      ]),
    );
  }
}
