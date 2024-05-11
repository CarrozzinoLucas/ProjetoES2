import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uffer/pages/list_saved_places_page.dart';
import 'package:uffer/pages/search_rides_page.dart';
import 'package:uffer/widgets/common/action_painel.dart';
import 'package:uffer/widgets/common/blue_button.dart';
import 'package:uffer/widgets/common/map_widget.dart';
import 'package:uffer/widgets/common/rounded_square_button.dart';
import 'package:uffer/widgets/common/top_back_button.dart';
import 'package:uffer/widgets/draggable/draggable_widget.dart';

class CancelRidePage extends StatelessWidget {
  final initialCameraPosition = const CameraPosition(
    target: LatLng(-22.90152056342056, -43.12411775370665),
    zoom: 11.0,
  );
  const CancelRidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          MapWidget(initialCameraPosition: initialCameraPosition),
          const TopBackButton(),
          DraggableWidget(
              initialChildSize: 0.8,
              minChildSize: 0.3,
              maxChildSize: 0.8,
            body: Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedSquareButton(
                    innerLabel: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.not_interested,
                          color: Color(0XFF004F9F),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 23,
              ),
              const Column(
                children: [
                  Text(
                    'Gostaria de cancelar a carona?',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8,),
                  Text('Nos conte o que aconteceu'),
                ],
              ),
              const SizedBox(
                height: 23,
              ),
              ActionPainel(
                options: const [
                  Option(
                      label: 'Solicitação acidental',
                      rightIconData: Icons.radio_button_checked),
                  Option(
                      label: 'Endereço de origem errado',
                      rightIconData: Icons.radio_button_off),
                  Option(
                      label: 'Motorista está atrasado',
                      rightIconData: Icons.radio_button_off),
                  Option(
                      label: 'Motorista não responde',
                      rightIconData: Icons.radio_button_off),
                  Option(
                      label: 'Motorista não corresponde à descrição',
                      rightIconData: Icons.radio_button_off),
                  Option(
                      label: 'Outro',
                      rightIconData: Icons.arrow_forward_ios),
                ],
                onPressed: () {
                  print('Painel pressionado!');
                },
              ),
              const SizedBox(height: 24),
              BlueButton(
                buttonLabel: 'Cancelar Carona',
                onPressed: () => {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const ListSavedPlacesPage(),
                      transitionDuration: Duration.zero,
                    ),
                  )
                },
                )
            ]),
          ),
        ],
      ),
    );
  }
}
