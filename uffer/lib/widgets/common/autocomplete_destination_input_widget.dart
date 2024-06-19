import 'package:flutter/material.dart';
import 'package:google_maps_webservice/places.dart';

class AutoCompleteDestinationInput extends StatelessWidget {
  final String label;
  final IconData? prefixIconData;
  final double iconSize;
  final void Function(String)? onSubmitted;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final void Function(List<Prediction>) onSuggestionsUpdate;

  const AutoCompleteDestinationInput({
    required this.label,
    this.prefixIconData,
    this.iconSize = 16.0,
    this.onSubmitted,
    this.onChanged,
    this.onTap,
    this.focusNode,
    this.controller,
    required this.onSuggestionsUpdate,
    Key? key,
  }) : super(key: key);

  Future<void> _getSuggestions(String query) async {
    await Future.delayed(Duration(seconds: 1));
    if (query.isEmpty) {
      onSuggestionsUpdate([]);
      return;
    }

    final places = GoogleMapsPlaces(apiKey: 'AIzaSyBIipfuW3z9_zppDkBVrbmxQc2cpSxQ610');
    final response = await places.autocomplete(query, language: 'pt', components: [Component(Component.country, 'br')]);

    if (response.isOkay) {
      onSuggestionsUpdate(response.predictions);
    } else {
      throw Exception('Failed to fetch suggestions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 600),
      child: GestureDetector(
        onTap: onTap,
        child: TextField(
          controller: controller,
          focusNode: focusNode,
          onSubmitted: onSubmitted,
          onChanged: (value) {
            onChanged?.call(value);
            _getSuggestions(value);
          },
          decoration: InputDecoration(
            fillColor: const Color(0xFFF9FAFB),
            contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
            labelText: label,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFE7E8EE)),
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            prefixIcon: prefixIconData != null
                ? Icon(
                    prefixIconData,
                    size: iconSize,
                    color: const Color(0XFF79747E),
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
