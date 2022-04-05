import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/error_handler.dart';
import 'package:where_to_go_today/src/features/main/places/service/places_bloc.dart';
import 'package:where_to_go_today/src/features/main/places/service/state/places_state.dart';

part 'place_vm.g.dart';

class PlaceVm = _PlaceVm with _$PlaceVm;

abstract class _PlaceVm extends ViewModel with Store {
  final PlacesBloc _bloc;

  final BuildContext _context;

  _PlaceVm(
    this._context,
    this._bloc, {
    required ErrorHandler errorHandler,
  }) : super(errorHandler) {
    observeBloc<PlacesState, PlacesBloc>(_bloc, _handleStates);
  }

  void _handleStates(PlacesState state) {
    if (state is PlacesStateLoading) {}
  }
}
