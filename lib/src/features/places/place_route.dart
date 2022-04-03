import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/features/places/place_screen.dart';

class PlaceRoute extends MaterialPage<void> {
  static const routeName = '/place';

  const PlaceRoute()
      : super(
          child: const PlaceScreen(),
        );
}
