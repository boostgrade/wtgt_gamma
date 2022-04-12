class LocationModel {
  /// The latitude of this position in degrees normalized to the interval -90.0
  /// to +90.0 (both inclusive).
  final double latitude;

  /// The longitude of the position in degrees normalized to the interval -180
  /// (exclusive) to +180 (inclusive).
  final double longitude;

  /// The time at which this position was determined.
  final DateTime? timestamp;

  LocationModel({
    required this.latitude,
    required this.longitude,
    this.timestamp,
  });
}
