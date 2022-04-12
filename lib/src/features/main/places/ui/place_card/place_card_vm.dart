import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:routemaster/routemaster.dart';
import 'package:share_plus/share_plus.dart';
import 'package:where_to_go_today/src/core/domain/place.dart';
import 'package:where_to_go_today/src/features/location/location_model.dart';
import 'package:where_to_go_today/src/features/location/location_service.dart';
import 'package:where_to_go_today/src/features/place_detail/place_detail_route.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';

part 'place_card_vm.g.dart';

class PlaceCardVm = _PlaceCardVm with _$PlaceCardVm;

abstract class _PlaceCardVm with Store {
  final Place place;
  final LocationService locationService;
  final BuildContext _context;

  @observable
  int? distance;

  _PlaceCardVm(
    this._context, {
    required this.place,
    required this.locationService,
  }) {
    _updateDistance();
  }

  void openPlaceDetails(BuildContext context) {
    Routemaster.of(context).push('${PlaceDetailRoute.routeName}/${place.id}');
  }

  void sharePlace() {
    final subject = _context.l10n.sharePlaceSubject;
    Share.share(
      '$subject ${place.name}',
      subject: subject,
    );
  }

  Future<void> _updateDistance() async {
    final myLocation = await locationService.getCurrentLocation();
    if (myLocation != null &&
        place.latitude != null &&
        place.longitude != null) {
      final placeLocation = LocationModel(
        latitude: place.latitude ?? 0,
        longitude: place.longitude ?? 0,
      );
      distance = locationService.distanceBetween(myLocation, placeLocation);
    }
  }
}
