import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uffer/pages/driver_on_way_page.dart';
import 'package:uffer/pages/ride_not_found_page.dart';
import 'package:uffer/widgets/common/blue_button.dart';
import 'package:uffer/widgets/common/destination_input_widget.dart';
import 'package:uffer/widgets/common/map_widget.dart';
import 'package:uffer/widgets/common/top_back_button.dart';
import 'package:uffer/widgets/common/draggable_widget.dart';

class ConfirmLocalPage extends StatelessWidget {
  final LatLng location;
  final String address; 

  const ConfirmLocalPage({
    Key? key,
    required this.location,
    required this.address, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final initialCameraPosition = CameraPosition(
      target: location,
      zoom: 20.0,
    );
    TextEditingController _addressController = TextEditingController(text: address);

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
              DestinationInput(
                label: 'Endereço',
                prefixIconData: Icons.circle,
                controller: _addressController,
              ),
              const SizedBox(height: 24),
              BlueButton(
                buttonLabel: 'Confirmar Local',
                onPressed: () => {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const DriverOnWayPage(),
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
