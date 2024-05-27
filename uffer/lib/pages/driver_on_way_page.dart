import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uffer/pages/cancel_ride.dart';
import 'package:uffer/pages/group_chat_page.dart';
import 'package:uffer/widgets/common/action_painel.dart';
import 'package:uffer/widgets/common/driver_info.dart';
import 'package:uffer/widgets/common/driver_rate.dart';
import 'package:uffer/widgets/common/map_widget.dart';
import 'package:uffer/widgets/common/rounded_square_button.dart';
import 'package:uffer/widgets/common/route_info.dart';
import 'package:uffer/widgets/common/top_back_button.dart';
import 'package:uffer/widgets/common/draggable_widget.dart';

class DriverOnWayPage extends StatelessWidget {
  final initialCameraPosition = const CameraPosition(
    target: LatLng(-22.90152056342056, -43.12411775370665),
    zoom: 11.0,
  );

  const DriverOnWayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          MapWidget(initialCameraPosition: initialCameraPosition),
          const TopBackButton(),
          DraggableWidget(
            initialChildSize: 0.85,
            minChildSize: 0.3,
            maxChildSize: 1.0,
            body: Column(
              children: [
                const Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InfoHeader(
                          title: 'O motorista está a caminho',
                          subtitle: 'Toyota Corolla, Preto',
                          plateNumber: 'ABJ012YU'),
                      Spacer(),
                      UserPhotoAndRateWidget(name: 'Beltrano',
                      starRateColor: Color(0xff66B2FF))
                    ]),
                const SizedBox(height: 32),
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RoundedSquareButton(
                        iconData: Icons.phone_outlined,
                        outerLabel: 'Ligar',
                        onPressed: () {},
                      ),
                      const SizedBox(width: 24),
                      RoundedSquareButton(
                        iconData: Icons.chat_bubble_outline,
                        outerLabel: 'Chat',
                        onPressed: () => {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      const GroupChatPage(),
                              transitionDuration: Duration.zero,
                            ),
                          )
                        },
                      ),
                      const SizedBox(width: 24),
                      RoundedSquareButton(
                        iconData: Icons.security,
                        outerLabel: 'Segurança',
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const RouteInfo(),
                const SizedBox(height: 24),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Outras ações',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                ),
                const SizedBox(height: 16),
                ActionPainel(
                  options: const [
                    Option(
                        label: 'Compartilhar dados da carona',
                        leftIconData: Icons.share_outlined,
                        rightIconData: Icons.arrow_forward_ios),
                    Option(
                        label: 'Cancelar carona',
                        leftIconData: Icons.cancel_outlined,
                        rightIconData: Icons.arrow_forward_ios),
                  ],
                  onPressed: () => {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const CancelRidePage(),
                        transitionDuration: Duration.zero,
                      ),
                    )
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
