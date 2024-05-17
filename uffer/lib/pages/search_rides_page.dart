import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uffer/pages/cancel_ride.dart';
import 'package:uffer/pages/confirm_local_page.dart';
import 'package:uffer/widgets/common/action_painel.dart';
import 'package:uffer/widgets/common/destination_input_widget.dart';
import 'package:uffer/widgets/common/map_widget.dart';
import 'package:uffer/widgets/common/rounded_rectangle_button.dart';
import 'package:uffer/widgets/common/rounded_square_button.dart';
import 'package:uffer/widgets/common/top_back_button.dart';
import 'package:uffer/widgets/common/draggable_widget.dart';
import 'package:uffer/widgets/search_rides/passenger_popup.dart';

class SearchRidesPage extends StatelessWidget {
  final initialCameraPosition = const CameraPosition(
    target: LatLng(-22.90152056342056, -43.12411775370665),
    zoom: 11.0,
  );

  const SearchRidesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          MapWidget(initialCameraPosition: initialCameraPosition),
          const TopBackButton(),
          DraggableWidget(
            initialChildSize: 0.65,
            minChildSize: 0.3,
            maxChildSize: 0.65,
            body: Column(children: [
              Row(children: [
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  child: DestinationInput(
                    label: 'Origem',
                    prefixIconData: Icons.circle,
                    onSubmitted: (String value) {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const ConfirmLocalPage(),
                          transitionDuration: Duration.zero,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 24, width: 24)
              ]),
              const SizedBox(height: 24),
              const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DestinationInput(
                      label: 'Destino',
                      prefixIconData: Icons.circle_outlined,
                    ),
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.add,
                          color: Color(0XFF79747E),
                        ),
                        iconSize: 24),
                  ]),
              const SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedRectangleButton(
                    icon: const Icon(Icons.calendar_month, color: Color(0XFF004F9F)),
                    onPressed: () {},
                    label: 'Agendar',
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  RoundedRectangleButton(
                    icon: const Icon(Icons.person_add_outlined, color: Color(0XFF004F9F),),
                    onPressed: () {
                      // Show the PassengerPopup dialog
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const PassengerPopup();
                        },
                      );
                    },
                    label: 'Passageiros',
                  ),
                ],
              ),
              const SizedBox(
                height: 23,
              ),
              ActionPainel(
                options: const [
                  Option(
                      label: 'Icaraí - UFF Praia Vermelha',
                      sublabel: '8:30h, 1 passageiro',
                      leftIconData: Icons.directions_car_filled_outlined,
                      rightIconData: Icons.arrow_forward_ios),
                  Option(
                      label: 'São Francisco - UFF Valonguinho',
                      sublabel: '10:30h, 2 passageiros',
                      leftIconData: Icons.directions_car_filled_outlined,
                      rightIconData: Icons.arrow_forward_ios),
                  Option(
                      label: 'Camboinhas - UFF Gragoatá',
                      sublabel: '6:30h, 1 passageiro',
                      leftIconData: Icons.directions_car_filled_outlined,
                      rightIconData: Icons.arrow_forward_ios),
                ],
                onPressed: () {
                  print('Painel pressionado!');
                },
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
