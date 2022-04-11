import 'package:freezed_annotation/freezed_annotation.dart';

part 'places_event.freezed.dart';

@freezed
class PlacesEvent with _$PlacesEvent {
  const factory PlacesEvent.getPlaces(
    int page,
    String searchText,
  ) = PlacesEventGetPlaces;
}
