import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:where_to_go_today/src/core/services/base/can_throw_exception_bloc_mixin.dart';
import 'package:where_to_go_today/src/features/auth/services/storage/token_storage.dart';
import 'package:where_to_go_today/src/features/authservices/repository/auth_repository.dart';
import 'package:where_to_go_today/src/features/main/profile/services/avatar/avatar_picker.dart';

import 'events/profile_event.dart';
import 'repository/profile_repository.dart';
import 'states/profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState>
    with CanThrowExceptionBlocMixin {
  final ProfileRepository _profileRepository;
  final AuthRepository _authRepository;
  final TokenStorage _tokenStorage;
  final AvatarPicker _avatarPicker;

  ProfileBloc(
    this._profileRepository,
    this._authRepository,
    this._tokenStorage,
    this._avatarPicker,
  ) : super(const ProfileState.init()) {
    on<ProfileEventGetUserProfile>(_onGetUserProfile);
    on<ProfileEventSignOut>(_onSignOut);
    on<ProfileEventUpdateAvatarFromCamera>(_onUpdateAvatarFromCamera);
    on<ProfileEventUpdateAvatarFromGallery>(_onUpdateAvatarFromGallery);
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

  FutureOr<void> _onUpdateAvatarFromCamera(
    ProfileEventUpdateAvatarFromCamera _,
    Emitter<ProfileState> emit,
  ) async {
    try {
      await _avatarPicker.pickFromCamera();
    } on Exception catch (e, s) {
      emit(ProfileState.error(e, s));
    }
  }

  FutureOr<void> _onUpdateAvatarFromGallery(
    ProfileEventUpdateAvatarFromGallery _,
    Emitter<ProfileState> emit,
  ) async {
    try {
      await _avatarPicker.pickFromGallery();
    } on Exception catch (e, s) {
      emit(ProfileState.error(e, s));
    }
  }
}
