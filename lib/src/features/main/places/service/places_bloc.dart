import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:where_to_go_today/src/core/services/base/can_throw_exception_bloc_mixin.dart';

import 'event/places_event.dart';
import 'repository/places_repository.dart';
import 'state/places_state.dart';

class PlacesBloc extends Bloc<PlacesEvent, PlacesState>
    with CanThrowExceptionBlocMixin {
  final PlacesRepository _placesService;

  PlacesBloc(this._placesService) : super(const PlacesState.init()) {
    on<PlacesEventGetPlaces>(_onGetPlaces);
  }

  FutureOr<void> _onGetPlaces(
    PlacesEventGetPlaces event,
    Emitter<PlacesState> emit,
  ) async {
    emit(const PlacesState.loading());
    try {
      final result = await _placesService.getPlaces(
        event.page,
        event.searchText,
      );
      emit(PlacesState.loaded(result));
    } on Exception catch (e, s) {
      emit(PlacesState.error(e, s));
    }
  }
}
