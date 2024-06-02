import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uffer/pages/search_rides_page.dart';
import 'package:uffer/widgets/common/blue_button.dart';
import 'package:uffer/widgets/common/destination_input_widget.dart';
import 'package:uffer/widgets/common/map_widget.dart';
import 'package:uffer/widgets/common/top_back_button.dart';
import 'package:uffer/widgets/common/draggable_widget.dart';
import 'package:uffer/pages/select_local_page.dart';

class ConfirmLocalPage extends StatefulWidget {
  final LatLng location;
  final String address;

  const ConfirmLocalPage({
    Key? key,
    required this.location,
    required this.address,
  }) : super(key: key);

  @override
  _ConfirmLocalPageState createState() => _ConfirmLocalPageState();
}

class _ConfirmLocalPageState extends State<ConfirmLocalPage> {
  late LatLng _location;
  late String _address;
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _location = widget.location;
    _address = widget.address;
    _addMarker(_location, _address);
  }

  void _addMarker(LatLng position, String address) {
    final MarkerId markerId = MarkerId(address);
    final Marker marker = Marker(
      markerId: markerId,
      position: position,
      infoWindow: InfoWindow(title: address),
      onTap: () {
  
      },
    );

    setState(() {
      _markers.add(marker);
    });
  }



  @override
  Widget build(BuildContext context) {
    TextEditingController _addressController = TextEditingController(text: _address);

    final CameraPosition initialCameraPosition = CameraPosition(
      target: _location,
      zoom: 19.0,
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(children: [
        MapWidget(
          initialCameraPosition: initialCameraPosition,
          markers: _markers,
          //onMarkerTap: _onMarkerTap,
        ),
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
                 onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectLocalPage(), // Navegue para SelectLocalPage
                      ),
                    );
                  },
              ),
              const SizedBox(height: 24),
              BlueButton(
                buttonLabel: 'Confirmar Local',
                onPressed: () => {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          SearchRidesPage(address: _address ),
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
