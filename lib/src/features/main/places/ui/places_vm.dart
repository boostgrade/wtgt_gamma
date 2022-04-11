import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:routemaster/routemaster.dart';
import 'package:where_to_go_today/src/core/domain/place.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_exception.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/error_handler.dart';
import 'package:where_to_go_today/src/features/main/places/service/event/places_event.dart';
import 'package:where_to_go_today/src/features/main/places/service/places_bloc.dart';
import 'package:where_to_go_today/src/features/main/places/service/state/places_state.dart';
import 'package:where_to_go_today/src/features/places/place_route.dart';

part 'places_vm.g.dart';

class PlacesVm = _PlacesVm with _$PlacesVm;

abstract class _PlacesVm extends ViewModel with Store {
  late final TextEditingController searchController;

  final BuildContext _context;
  final PlacesBloc _bloc;

  @observable
  List<Place> places = [];

  @observable
  bool loading = false;

  String _lastSearchText = '';
  Timer? _debounce;

  String get _searchText => searchController.text;

  _PlacesVm(
    this._context,
    this._bloc, {
    required ErrorHandler errorHandler,
  }) : super(errorHandler) {
    _init();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @action
  void searchPlaces() {
    _bloc.add(PlacesEvent.getPlaces(_searchText));
  }

  @action
  void getPlace(int placeId) {
    _bloc.add(PlacesEvent.getPlace(placeId));
  }

  void openPlaceDetails(int index) {
    final place = places[index];
    debugPrint('!!! openPlaceDetails(${place.name})');
    Routemaster.of(_context).push('${PlaceRoute.routeName}/${place.id}');
    getPlace(place.id);
  }

  void sharePlace(int index) {
    final place = places[index];
    debugPrint('!!! sharePlace(${place.name})');
  }

  void _init() {
    observeBloc<PlacesState, PlacesBloc>(_bloc, _handleStates);
    searchController = TextEditingController();
    searchController.addListener(_searchListener);
  }

  void _searchListener() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(
      const Duration(milliseconds: 700),
      () {
        if (_lastSearchText != _searchText) {
          _lastSearchText = _searchText;
          searchPlaces();
        }
      },
    );
  }

  void _handleStates(PlacesState state) {
    loading = false;
    if (state is PlacesStateLoading) {
      loading = true;
    } else if (state is PlacesStateLoaded) {
      places = state.places;
    } else if (state is PlacesStateError) {
      _bloc.onError(ServerErrorException(), state.stackTrace);
    }
  }
}
