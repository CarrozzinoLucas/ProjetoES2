import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget {
  final CameraPosition initialCameraPosition;
  final Set<Marker> markers;
  final Function(LatLng, String)? onMarkerTap;

  const MapWidget({super.key, this.markers = const <Marker>{}, required this.initialCameraPosition,this.onMarkerTap,}
);

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: (controller) {
        mapController = controller;
      },
      markers: widget.markers,
      initialCameraPosition: widget.initialCameraPosition,
    );
  }
}
