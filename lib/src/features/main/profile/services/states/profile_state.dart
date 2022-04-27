import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:where_to_go_today/src/core/domain/user.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.init() = ProfileStateInit;

  const factory ProfileState.loading() = ProfileStateLoading;

  const factory ProfileState.loaded(
    User profile,
  ) = ProfileStateLoaded;

  const factory ProfileState.signedOut() = ProfileStateSignedOut;

  const factory ProfileState.error(
    // ignore: avoid_annotating_with_dynamic
    dynamic error,
    StackTrace stackTrace,
  ) = ProfileStateError;
}
