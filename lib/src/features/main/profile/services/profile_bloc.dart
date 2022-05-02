import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:where_to_go_today/src/core/services/base/can_throw_exception_bloc_mixin.dart';
import 'package:where_to_go_today/src/features/auth/services/storage/token_storage.dart';
import 'package:where_to_go_today/src/features/authservices/repository/auth_repository.dart';

import 'events/profile_event.dart';
import 'repository/profile_repository.dart';
import 'states/profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState>
    with CanThrowExceptionBlocMixin {
  final ProfileRepository _profileRepository;
  final AuthRepository _authRepository;
  final TokenStorage _tokenStorage;

  ProfileBloc(this._profileRepository, this._authRepository, this._tokenStorage)
      : super(const ProfileState.init()) {
    on<ProfileEventGetUserProfile>(_onGetUserProfile);
    on<ProfileEventSignOut>(_onSignOut);
    on<ProfileEventAvatarUpdate>(_onAvatarUpdate);
  }

  FutureOr<void> _onGetUserProfile(
    ProfileEventGetUserProfile _,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.init());
    try {
      final result = await _profileRepository.getStubProfile();
      emit(ProfileState.loaded(result));
    } on Exception catch (e, s) {
      emit(ProfileState.error(e, s));
    }
  }

  Future<FutureOr<void>> _onSignOut(
    ProfileEventSignOut _,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.loading());
    try {
      await _authRepository.logout();
      _tokenStorage.clearToken();
      emit(const ProfileState.signedOut());
    } on Exception catch (e, s) {
      emit(ProfileState.error(e, s));
    }
  }

  FutureOr<void> _onAvatarUpdate(
    ProfileEventAvatarUpdate _,
    Emitter<ProfileState> emit,
  ) {
    emit(const ProfileState.loading());
    // TODO(any): обработать нажатие на кнопку
  }
}
