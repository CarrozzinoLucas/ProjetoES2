import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uffer/widgets/common/action_painel.dart';
import 'package:uffer/widgets/common/destination_input_widget.dart';
import 'package:uffer/widgets/common/map_widget.dart';
import 'package:uffer/widgets/common/top_back_button.dart';
import 'package:uffer/widgets/common/draggable_widget.dart';

class AddSavedPlacePage extends StatelessWidget {
  final initialCameraPosition = const CameraPosition(
    target: LatLng(-22.90152056342056, -43.12411775370665),
    zoom: 11.0,
  );
  const AddSavedPlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          MapWidget(initialCameraPosition: initialCameraPosition),
          DraggableWidget(
            initialChildSize: 1,
            minChildSize: 0.3,
            maxChildSize: 1,
            body: Column(
              children: [
                const Column(
                  children: [
                    Text(
                      'Adicionar local',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    DestinationInput(
                        prefixIconData: Icons.circle, label: 'Endereço')
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                ActionPainel(
                  options: const [
                    Option(
                        label: 'Rua Pedro Tavares Dias Pessoa, 543',
                        leftIconData: Icons.place_outlined,
                        rightIconData: Icons.arrow_forward_ios),
                    Option(
                        label: 'Av. Rui Barbosa, 1234',
                        leftIconData: Icons.place_outlined,
                        rightIconData: Icons.arrow_forward_ios),
                    Option(
                        label: 'Av. Gavião Peixoto, 4322',
                        leftIconData: Icons.place_outlined,
                        rightIconData: Icons.arrow_forward_ios),
                    Option(
                        label: 'Rua Lopes Trovão, 7263',
                        leftIconData: Icons.place_outlined,
                        rightIconData: Icons.arrow_forward_ios),
                    Option(
                        label: 'Rua Mem de Sá, 1010',
                        leftIconData: Icons.place_outlined,
                        rightIconData: Icons.arrow_forward_ios),
                    Option(
                        label: 'Rua Dr. Tavares de Macedo, 9289',
                        leftIconData: Icons.place_outlined,
                        rightIconData: Icons.arrow_forward_ios),
                  ],
                  onPressed: () {
                    print('Painel pressionado!');
                  },
                ),
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
