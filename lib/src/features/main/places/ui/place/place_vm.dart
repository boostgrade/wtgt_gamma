import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:routemaster/routemaster.dart';
import 'package:share_plus/share_plus.dart';
import 'package:where_to_go_today/src/core/domain/place.dart';
import 'package:where_to_go_today/src/features/location/location_model.dart';
import 'package:where_to_go_today/src/features/location/location_service.dart';
import 'package:where_to_go_today/src/features/main/places/ui/place/place_route.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';

part 'place_card_vm.g.dart';

class PlaceVm = _PlaceVm with _$PlaceVm;

abstract class _PlaceVm with Store {
  final int placeId;

  _PlaceVm({
    required this.placeId,
  }) {
    _updateDistance();
  }

  void _getPlace() {
    
  }
}
