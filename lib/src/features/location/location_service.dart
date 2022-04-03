import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:where_to_go_today/src/features/location/location_model.dart';

class LocationService {
  LocationService() {
    _init();
  }

  Future<LocationModel?> getCurrentLocation() async {
    return LocationModel(latitude: 0, longitude: 0);
  }

  int distanceBetween(LocationModel start, LocationModel end) {
    debugPrint('start = $start, end = $end');
    
    return Random().nextInt(999);
  }

  void _init() {
    debugPrint('LocationService init()');
  }
}
