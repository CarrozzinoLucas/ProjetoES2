import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uffer/pages/add_saved_place_page.dart';
import 'package:uffer/widgets/common/action_painel.dart';
import 'package:uffer/widgets/common/blue_button.dart';
import 'package:uffer/widgets/common/map_widget.dart';
import 'package:uffer/widgets/common/top_back_button.dart';
import 'package:uffer/widgets/common/draggable_widget.dart';

class ListSavedPlacesPage extends StatelessWidget {
  final initialCameraPosition = const CameraPosition(
    target: LatLng(-22.90152056342056, -43.12411775370665),
    zoom: 11.0,
  );
  const ListSavedPlacesPage({super.key});

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
                      'Escolha um local',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                ActionPainel(
                  options: const [
                    Option(
                        label: 'Rua dos Limoeiros, 543',
                        leftIconData: Icons.star,
                        rightIconData: Icons.arrow_forward_ios),
                    Option(
                        label: 'Rua Engenharia de Software II, 1234',
                        leftIconData: Icons.star,
                        rightIconData: Icons.arrow_forward_ios),
                    Option(
                        label: 'Rua Flutter, 4322',
                        leftIconData: Icons.star,
                        rightIconData: Icons.arrow_forward_ios),
                    Option(
                        label: 'Rua Firebase, 7263',
                        leftIconData: Icons.star,
                        rightIconData: Icons.arrow_forward_ios),
                    Option(
                        label: 'Rua Quero Férias, 1010',
                        leftIconData: Icons.star,
                        rightIconData: Icons.arrow_forward_ios),
                    Option(
                        label: 'Rua Ninguém Aguenta mais, 9289',
                        leftIconData: Icons.star,
                        rightIconData: Icons.arrow_forward_ios),
                  ],
                  onPressed: () {
                    print('Painel pressionado!');
                  },
                ),
                const SizedBox(height: 24),
                BlueButton(
                  buttonLabel: 'Adicionar Local',
                  onPressed: () => Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const AddSavedPlacePage(),
                      transitionDuration: Duration.zero,
                    ),
                  ),
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
