import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:routemaster/routemaster.dart';
import 'package:where_to_go_today/src/core/domain/place.dart';
import 'package:where_to_go_today/src/core/domain/user.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_exception.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/error_handler.dart';
import 'package:where_to_go_today/src/features/auth/services/auth_bloc.dart';
import 'package:where_to_go_today/src/features/auth/services/bloc/events/auth_event.dart';
import 'package:where_to_go_today/src/features/main/profile/services/events/profile_event.dart';
import 'package:where_to_go_today/src/features/main/profile/services/states/profile_state.dart';
import 'package:where_to_go_today/src/features/place_detail/place_detail_route.dart';
import 'package:where_to_go_today/src/features/settings/ui/settings_route.dart';

import '../services/profile_bloc.dart';

part 'profile_vm.g.dart';

class ProfileVm = _ProfileVm with _$ProfileVm;

abstract class _ProfileVm extends ViewModel with Store {
  final BuildContext _context;
  final ProfileBloc _bloc;
  final AuthBloc _authBloc;

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
  bool init = true;

  @observable
  bool loading = false;

  _ProfileVm(
    this._context,
    this._bloc,
    this._authBloc, {
    required ErrorHandler errorHandler,
  }) : super(errorHandler) {
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
    Routemaster.of(_context).push(SettingsRoute.routeName);
  }

  @action
  void onFavoritePlace(int id) {
    Routemaster.of(_context).push('${PlaceDetailRoute.routeName}/$id');
  }

  @action
  void onProfileSignOut() {
    _bloc.add(const ProfileEvent.signOut());
  }

  void _init() {
    observeBloc(_bloc, _handleStates);
  }

  void _handleStates(ProfileState state) {
    init = false;
    loading = false;
    if (state is ProfileStateInit) {
      init = true;
    } else if (state is ProfileStateLoading) {
      loading = true;
    } else if (state is ProfileStateLoaded) {
      profile = state.profile;
    } else if (state is ProfileStateSignedOut) {
      _authBloc.add(const AuthEvent.logout());
    } else if (state is ProfileStateError) {
      _bloc.onError(ServerErrorException(), state.stackTrace);
    }
  }
}
