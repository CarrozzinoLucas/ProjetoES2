import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uffer/widgets/common/destination_input_widget.dart';
import 'package:uffer/widgets/common/map_widget.dart';
import 'package:uffer/widgets/common/top_back_button.dart';
import 'package:uffer/widgets/common/draggable_widget.dart';

class MapPage extends StatelessWidget {
  final initialCameraPosition = const CameraPosition(
    target: LatLng(-22.90152056342056, -43.12411775370665),
    zoom: 11.0,
  );

  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          MapWidget(initialCameraPosition: initialCameraPosition),
          const TopBackButton(),
          DraggableWidget(
            title: 'Vamos procurar sua carona',
            subtitle: 'Insira seus locais de origem e destino',
            buttonLabel: 'Buscar Carona',
            onButtonPressed: () {},
            body: const [
              SizedBox(height: 0),
              DestinationInput(label: 'Origem'),
              SizedBox(height: 10),
              // TODO: adicionar botao '+' do lado do input de destino
              DestinationInput(label: 'Destino'),
            ],
          ),
        ],
      ),
    );
  }
}
