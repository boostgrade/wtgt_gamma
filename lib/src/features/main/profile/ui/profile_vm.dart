import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/core/domain/place.dart';
import 'package:where_to_go_today/src/core/domain/user.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_exception.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/error_handler.dart';
import 'package:where_to_go_today/src/features/main/profile/services/events/profile_event.dart';
import 'package:where_to_go_today/src/features/main/profile/services/states/profile_state.dart';

import '../services/profile_bloc.dart';

part 'profile_vm.g.dart';

class ProfileVm = _ProfileVm with _$ProfileVm;

abstract class _ProfileVm extends ViewModel with Store {
  final BuildContext _context;
  final ProfileBloc _bloc;

  @observable
  User profile = User(
    id: 0,
    phone: '',
    lastName: '',
    email: '',
    birthDate: '',
    name: '',
    favoritePlaces: List<Place>.generate(
      4,
      (index) => Place(
        id: index,
        name: '',
        description: '',
        imageUrl: '',
        latitude: null,
        longitude: null,
      ),
    ),
  );

  @observable
  bool loading = true;

  _ProfileVm(this._context, this._bloc, {required ErrorHandler errorHandler})
      : super(errorHandler) {
    _init();
  }

  @action
  void getProfile() {
    _bloc.add(const ProfileEvent.getUserProfile());
  }

  @action
  void onAvatar() {
    // TODO(any): обработать нажатие на кнопку
  }

  @action
  void onEditUserDetails() {
    // TODO(any): обработать нажатие на кнопку
  }

  @action
  void onSettings() {
    // TODO(any): обработать нажатие на кнопку
  }

  @action
  void onFavoritePlace(int id) {
    // TODO(any): обработать нажатие на кнопку
  }

  @action
  void onProfileSignOut() {
    // TODO(any): обработать нажатие на кнопку
  }

  void _init() {
    observeBloc(_bloc, _handleStates);
  }

  void _handleStates(ProfileState state) {
    loading = false;
    if (state is ProfileStateLoading) {
      loading = true;
    } else if (state is ProfileStateLoaded) {
      profile = state.profile;
    } else if (state is ProfileStateError) {
      _bloc.onError(ServerErrorException(), state.stackTrace);
    }
  }
}
