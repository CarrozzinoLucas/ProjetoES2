import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uffer/widgets/common/destination_input_widget.dart';
import 'package:uffer/widgets/common/map_widget.dart';
import 'package:uffer/widgets/common/top_back_button.dart';
import 'package:uffer/widgets/common/draggable_widget.dart';

class MapPage extends StatelessWidget {
  // TODO: tirar isso daqui
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
            body: Column(children: [
              Row(children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 16),
                    child: const DestinationInput(label: 'Origem'),
                  ),
                ),
                const SizedBox(height: 24, width: 24)

                // const Icon(Icons.add)
              ]),
              const SizedBox(height: 24),
              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 16),
                    child: const DestinationInput(label: 'Destino'),
                  ),
                ),
                // TODO: Dar um jeito de centralizar esse botão
                const SizedBox(
                    height: 24,
                    width: 24,
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        iconSize: 24))
              ]),
              // TODO: adicionar botões partir agora e apenas eu
            ]),
          ),
        ],
      ),
    );
  }
}
