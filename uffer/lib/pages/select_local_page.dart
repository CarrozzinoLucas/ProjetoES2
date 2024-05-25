import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uffer/pages/confirm_local_page.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:uffer/widgets/common/action_painel.dart';
import 'package:uffer/pages/list_saved_places_page.dart';
import 'package:uffer/widgets/common/autocomplete_destination_input_widget.dart';
import 'package:uffer/widgets/common/map_widget.dart';
import 'package:uffer/widgets/common/top_back_button.dart';
import 'package:uffer/widgets/common/draggable_widget.dart';

class SelectLocalPage extends StatefulWidget {
  const SelectLocalPage({Key? key}) : super(key: key);

  @override
  _SelectLocalPageState createState() => _SelectLocalPageState();
}

String _truncateString(String text, {int maxLength = 30}) {
  if (text.length > maxLength) {
    return '${text.substring(0, maxLength)}...';
  }
  return text;
}

class _SelectLocalPageState extends State<SelectLocalPage> {
  final initialCameraPosition = const CameraPosition(
    target: LatLng(-22.90152056342056, -43.12411775370665),
    zoom: 11.0,
  );
  late FocusNode _destinationFocusNode;
  late TextEditingController _destinationController;
  List<Prediction> _suggestions = [];

  @override
  void initState() {
    super.initState();
    _destinationFocusNode = FocusNode();
    _destinationController = TextEditingController();

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_destinationFocusNode);
    });
  }

  @override
  void dispose() {
    _destinationFocusNode.dispose();
    _destinationController.dispose();
    super.dispose();
  }

  void _updateSuggestions(List<Prediction> suggestions) {
    setState(() {
      _suggestions = suggestions;
    });
  }

  Future<LatLng?> _getPlaceLatLng(String placeId) async {
    final places = GoogleMapsPlaces(apiKey: 'AIzaSyBIipfuW3z9_zppDkBVrbmxQc2cpSxQ610');
    final detail = await places.getDetailsByPlaceId(placeId);
    if (detail.isOkay) {
      final location = detail.result.geometry?.location;
      if (location != null) {
        return LatLng(location.lat, location.lng);
      }
    }
    return null;
  }

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
                Column(
                  children: [
                    const Text(
                      'Selecionar local',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    AutoCompleteDestinationInput(
                      prefixIconData: Icons.circle,
                      label: 'Endereço',
                      controller: _destinationController,
                      focusNode: _destinationFocusNode,
                      onSuggestionsUpdate: _updateSuggestions,
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) =>
                                const SelectLocalPage(),
                            transitionDuration: Duration.zero,
                          ),
                        );
                      },
                      onSubmitted: (String value) {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) =>
                                ConfirmLocalPage(
                                  location: LatLng(-22.90152056342056, -43.12411775370665),
                                  address: value, 
                                ),
                            transitionDuration: Duration.zero,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                ActionPainel(
                  options: const [
                    Option(
                        label: 'Locais salvos',
                        leftIconData: Icons.star_border,
                        rightIconData: Icons.arrow_forward_ios),
                    Option(
                        label: 'Selecionar no mapa',
                        leftIconData: Icons.place_outlined,
                        rightIconData: Icons.arrow_forward_ios),
                  ],
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
                ),
                const SizedBox(
                  height: 24,
                ),
                ActionPainel(
                  options: _suggestions.map((suggestion) {
                    return Option(
                      label: _truncateString(suggestion.description ?? ''),
                      leftIconData: Icons.place_outlined,
                      rightIconData: Icons.arrow_forward_ios,
                      onPressed: () async {
                        LatLng? location = await _getPlaceLatLng(suggestion.placeId!);
                        if (location != null) {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) =>
                                  ConfirmLocalPage(
                                    location: location,
                                    address: suggestion.description ?? '', // Passando o endereço
                                  ),
                              transitionDuration: Duration.zero,
                            ),
                          );
                        }
                      },
                    );
                  }).toList(),
                  onPressed: () {
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
