import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uffer/widgets/common/destination_input_widget.dart';
import 'package:uffer/widgets/common/grey_button.dart';
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
            body: [
              const SizedBox(height: 0),
              const DestinationInput(label: 'Origem'),
              const SizedBox(height: 10),
              Row(
                children: [
                const DestinationInput(label: 'Destino'),
                const SizedBox(width: 16), // space between input and icon
                SvgPicture.asset('lib/images/add_icon.svg'),
              ]),
              // TODO: adicionar botões partir agora e apenas eu
              // const Row(
              //   children: [
              //     GreyButton(buttonLabel: 'Partir agora'),
              //     GreyButton(buttonLabel: 'Apenas eu'),
              //  ],
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
