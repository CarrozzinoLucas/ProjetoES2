import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uffer/pages/home_page.dart';
import 'package:uffer/widgets/common/blue_button.dart';
import 'package:uffer/widgets/common/map_widget.dart';
import 'package:uffer/widgets/common/top_back_button.dart';
import 'package:uffer/widgets/common/draggable_widget.dart';

class RideNotFoundPage extends StatelessWidget {
  final initialCameraPosition = const CameraPosition(
    target: LatLng(-22.90152056342056, -43.12411775370665),
    zoom: 11.0,
  );

  const RideNotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          MapWidget(initialCameraPosition: initialCameraPosition),
          const TopBackButton(),
          Center(
            child: DraggableWidget(
              initialChildSize: 0.55,
              minChildSize: 0.3,
              maxChildSize: 0.65,
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Não encontramos sua carona...',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF004F9F),
                    ),
                    textAlign: TextAlign.center, // Alinhando o texto ao centro
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Infelizmente não encontramos caronas compatíveis com sua descrição',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    '😔',
                    style: TextStyle(fontSize: 80),
                  ),
                  const Text(
                    'Salvamos sua solicitação. Você receberá uma notificação assim que encontrarmos uma carona compatível.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  BlueButton(
                    buttonLabel: 'Ok',
                                    onPressed: () => {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const HomePage(),
                      transitionDuration: Duration.zero,
                    ),
                  )
                },),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
