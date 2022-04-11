import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/core/domain/place.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_exception.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/error_handler.dart';
import 'package:where_to_go_today/src/features/main/places/service/event/places_event.dart';
import 'package:where_to_go_today/src/features/main/places/service/places_bloc.dart';
import 'package:where_to_go_today/src/features/main/places/service/state/places_state.dart';

part 'place_vm.g.dart';

class PlaceVm = _PlaceVm with _$PlaceVm;

abstract class _PlaceVm extends ViewModel with Store {
  final PlacesBloc _bloc;

  @observable
  Place? place;

  @observable
  bool loading = false;

  _PlaceVm(
    this._bloc, {
    required ErrorHandler errorHandler,
  }) : super(errorHandler) {
    observeBloc<PlacesState, PlacesBloc>(_bloc, _handleStates);
  }

  @action
  void getPlace(int placeId) {
    _bloc.add(PlacesEvent.getPlace(placeId));
  }

  void _handleStates(PlacesState state) {
    loading = false;
    if (state is PlacesStateLoading) {
      loading = true;
    } else if (state is PlacesStateError) {
      _bloc.onError(ServerErrorException(), state.stackTrace);
    } else if (state is PlacesStatePlaceLoaded) {
      place = state.place;
    }
  }
}
