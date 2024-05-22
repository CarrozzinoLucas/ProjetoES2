import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uffer/pages/select_local_page.dart';
import 'package:uffer/widgets/common/action_painel.dart';
import 'package:uffer/widgets/common/destination_input_widget.dart';
import 'package:uffer/widgets/common/map_widget.dart';
import 'package:uffer/widgets/common/rounded_rectangle_button.dart';
import 'package:uffer/widgets/common/top_back_button.dart';
import 'package:uffer/widgets/common/draggable_widget.dart';
import 'package:uffer/widgets/search_rides/passenger_popup.dart';

class SearchRidesPage extends StatefulWidget {
  const SearchRidesPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchRidesPageState createState() => _SearchRidesPageState();
}

class _SearchRidesPageState extends State<SearchRidesPage> {
  final initialCameraPosition = const CameraPosition(
    target: LatLng(-22.90152056342056, -43.12411775370665),
    zoom: 11.0,
  );

  int _passengerCount = 1;

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
            maxChildSize: 0.85,
            body:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(children: [
                Expanded(
                  child: DestinationInput(
                    label: 'Origem',
                    prefixIconData: Icons.circle,
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const SelectLocalPage(),
                          transitionDuration: Duration.zero,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 48)
              ]),
              const SizedBox(height: 16),
              const Row(children: [
                Expanded(
                  child: DestinationInput(
                    label: 'Destino',
                    prefixIconData: Icons.circle_outlined,
                  ),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: RoundedRectangleButton(
                      icon: const Icon(Icons.calendar_month,
                          color: Color(0XFF004F9F)),
                      onPressed: () {},
                      label: 'Agora',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: RoundedRectangleButton(
                      icon: const Icon(
                        Icons.person_add_outlined,
                        color: Color(0XFF004F9F),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const PassengerPopup();
                          },
                        ).then((value) {
                          if (value != null) {
                            setState(() {
                              _passengerCount = value;
                            });
                          }
                        });
                      },
                      label: _passengerCount > 1
                          ? '$_passengerCount passageiros'
                          : 'Só você',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 23),
              ActionPainel(
                options: const [
                  Option(
                      label: 'Icaraí - UFF Praia Vermelha',
                      sublabel: '8:30h, 1 passageiro',
                      rightIconData: Icons.arrow_forward_ios),
                  Option(
                      label: 'São Francisco - UFF Valonguinho',
                      sublabel: '10:30h, 2 passageiros',
                      rightIconData: Icons.arrow_forward_ios),
                  Option(
                      label: 'Camboinhas - UFF Gragoatá',
                      sublabel: '6:30h, 1 passageiro',
                      rightIconData: Icons.arrow_forward_ios),
                ],
                onPressed: () {},
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
