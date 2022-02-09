import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.init() = AuthStateInit;

  const factory AuthState.needOtp() = AuthStateNeedOtp;

  const factory AuthState.idle() = AuthStateIdle;

  const factory AuthState.success() = AuthStateSuccess;

  // ignore: avoid_annotating_with_dynamic
  const factory AuthState.error(dynamic error) = AuthStateError;
}
