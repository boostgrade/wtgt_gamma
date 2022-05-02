import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/core/domain/place.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_exception.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/error_handler.dart';
import 'package:where_to_go_today/src/features/location/location_service.dart';
import 'package:where_to_go_today/src/features/main/places/service/event/places_event.dart';
import 'package:where_to_go_today/src/features/main/places/service/places_bloc.dart';
import 'package:where_to_go_today/src/features/main/places/service/state/places_state.dart';

part 'places_vm.g.dart';

class PlacesVm = _PlacesVm with _$PlacesVm;

abstract class _PlacesVm extends ViewModel with Store {
  static const _itemsPerPage = 5;
  late final TextEditingController searchController;
  final LocationService locationService;
  final PlacesBloc _bloc;

  @observable
  List<Place> places = [];

  @observable
  bool loading = false;

  String _lastSearchText = '';
  Timer? _debounce;
  int _page = 0;

  String get _searchText => searchController.text;

  _PlacesVm(
    this._bloc, {
    required this.locationService,
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
  void nextPage() {
    _bloc.add(PlacesEvent.getPlaces(_page, _searchText));
  }

  void _init() {
    observeBloc<PlacesState, PlacesBloc>(_bloc, _handleStates);
    searchController = TextEditingController();
    searchController.addListener(_searchListener);
    locationService.getCurrentLocation();
    _startSearch();
  }

  void _startSearch() {
    _page = 0;
    places.clear();
    nextPage();
  }

  void _searchListener() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(
      const Duration(milliseconds: 700),
      () {
        if (_lastSearchText != _searchText) {
          _lastSearchText = _searchText;
          _startSearch();
        }
      },
    );
  }

  void _incrementPage(int newPartLength) {
    if (newPartLength != 0 && newPartLength % _itemsPerPage == 0) {
      _page++;
    }
  }

  void _handleStates(PlacesState state) {
    loading = false;
    if (state is PlacesStateLoading) {
      loading = true;
    } else if (state is PlacesStateLoaded) {
      places.addAll(state.places);
      _incrementPage(state.places.length);
    } else if (state is PlacesStateError) {
      _bloc.onError(ServerErrorException(), state.stackTrace);
    }
  }
}
