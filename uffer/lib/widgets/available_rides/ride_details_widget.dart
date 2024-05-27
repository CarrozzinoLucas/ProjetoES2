import 'package:flutter/material.dart';
import 'package:uffer/pages/driver_on_way_page.dart';
import 'package:uffer/widgets/common/blue_button.dart';
import 'package:uffer/widgets/common/driver_info.dart';
import 'package:uffer/widgets/common/driver_rate.dart';
import 'package:uffer/widgets/common/ride_details_info.dart';
import 'package:uffer/widgets/common/rounded_square_button.dart';
import 'package:uffer/widgets/common/route_info.dart';
import 'package:uffer/widgets/common/star_rate.dart';

class RideDetails extends StatefulWidget {
  const RideDetails({Key? key}) : super(key: key);

  @override
  _RideDetailsState createState() => _RideDetailsState();
}

class _RideDetailsState extends State<RideDetails> {
  bool _showDetails = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _showDetails = !_showDetails;
        });
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFE7E8EE)),
              color: const Color(0xFFF9FAFB),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: SizedBox(
                      height: 64,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Icon(
                              Icons.directions_car_filled_outlined,
                              color: Color(0XFF79747E),
                            ),
                          ),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Beltrano',
                                  style: TextStyle(
                                    color: Color(0XFF44474E),
                                  ),
                                ),
                                StarRate(
                                  color: Color(0xFF66B2FF),
                                  rating: 4.5,
                                )
                              ],
                            ),
                          ),
                          const Spacer(),
                          const RideDetailsInfo(
                              info: '2/5', iconData: Icons.person_outline),
                          const SizedBox(width: 24),
                          const RideDetailsInfo(
                              info: '8:40', iconData: Icons.access_time),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _showDetails = !_showDetails;
                              });
                            },
                            icon: Icon(
                              _showDetails
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                              size: 24,
                              color: const Color(0XFF79747E),
                            ),
                            iconSize: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (_showDetails) _buildDetails(),
        ],
      ),
    );
  }

  Widget _buildDetails() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE7E8EE)),
        color: const Color(0xFFF9FAFB),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              InfoHeader(
                  title: 'Carona do Beltrano',
                  subtitle: 'Toyota Corolla, Preto',
                  plateNumber: 'ABJ012YU'),
              Spacer(),
              UserPhotoAndRateWidget(
                  name: 'Beltrano', starRateColor: Color(0xff66B2FF)),
            ],
          ),
          const SizedBox(height: 24),
          const RouteInfo(),
          const SizedBox(height: 24),
          const InfoHeader(title: 'Passageiros'),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UserPhotoAndRateWidget(name: 'Rodrigo'),
              SizedBox(width: 24),
              UserPhotoAndRateWidget(name: 'Joana'),
            ],
          ),
          const SizedBox(height: 24),
          BlueButton(
            buttonLabel: 'Solicitar carona',
            onPressed: () => {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const DriverOnWayPage(),
                  transitionDuration: Duration.zero,
                ),
              )
            },
          ),
        ],
      ),
    );
  }
}
