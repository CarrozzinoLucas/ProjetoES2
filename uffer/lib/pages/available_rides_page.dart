import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uffer/widgets/available_rides/ride_details_widget.dart';
import 'package:uffer/widgets/common/driver_info.dart';
import 'package:uffer/widgets/common/map_widget.dart';
import 'package:uffer/widgets/common/top_back_button.dart';
import 'package:uffer/widgets/common/draggable_widget.dart';

class AvailableRidesPage extends StatelessWidget {
  final initialCameraPosition = const CameraPosition(
    target: LatLng(-22.90152056342056, -43.12411775370665),
    zoom: 11.0,
  );

  const AvailableRidesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          MapWidget(initialCameraPosition: initialCameraPosition),
          const TopBackButton(),
          const DraggableWidget(
            initialChildSize: 0.85,
            minChildSize: 0.3,
            maxChildSize: 1.0,
            body: Column(
              children: [
                InfoHeader(title: "Caronas disponíveis", subtitle: 'Essas são as caronas compatíveis com sua descrição\nClique para ver os detalhes'),
                SizedBox(height: 24),
                RideDetails(),
                SizedBox(height: 16),
                RideDetails(),
                SizedBox(height: 16),
                RideDetails(),
                SizedBox(height: 16),
                RideDetails(),
                SizedBox(height: 16),
                RideDetails(),
                SizedBox(height: 16),
                RideDetails(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
