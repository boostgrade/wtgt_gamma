import 'package:bloc/bloc.dart';
import 'package:where_to_go_today/src/core/services/base/can_throw_exception_bloc_mixin.dart';

import 'events/profile_event.dart';
import 'repository/profile_repository.dart';
import 'states/profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState>
    with CanThrowExceptionBlocMixin {
  final ProfileRepository _profileRepository;

  ProfileBloc(this._profileRepository) : super(const ProfileState.init()) {
    on<ProfileEventGetUserProfile>((event, emit) async {
      emit(const ProfileState.loading());
      try {
        final result = await _profileRepository.getProfile();
        emit(ProfileState.loaded(result));
      } on Exception catch (e, s) {
        emit(ProfileState.error(e, s));
      }
    });
  }
}
