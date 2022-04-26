import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:where_to_go_today/src/core/domain/place.dart';

part 'places_state.freezed.dart';

@freezed
class PlacesState with _$PlacesState {
  const factory PlacesState.init() = PlacesStateInit;

  const factory PlacesState.loading() = PlacesStateLoading;

  const factory PlacesState.loaded(
    List<Place> places,
  ) = PlacesStateLoaded;

  const factory PlacesState.placeLoaded(Place place) = PlacesStatePlaceLoaded;

  const factory PlacesState.error(
    // ignore: avoid_annotating_with_dynamic
    dynamic error,
    StackTrace stackTrace,
  ) = PlacesStateError;
}
