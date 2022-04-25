import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/features/main/places/ui/place/place_screen.dart';
import 'package:where_to_go_today/src/features/main/places/ui/place_card/place_card_vm.dart';

@immutable
class PlaceRoute extends MaterialPage<void> {
  static const routeName = '/place-detail-info';

  PlaceRoute( place)
      : super(
          child: Builder(
            builder: (context) => PlaceScreen(
              place: place,
              
            ),
          ),
        );
}
