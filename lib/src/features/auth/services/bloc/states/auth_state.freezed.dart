// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthStateInit init() {
    return const AuthStateInit();
  }

  AuthStateNeedOtp needOtp() {
    return const AuthStateNeedOtp();
  }

  AuthStateIdle idle() {
    return const AuthStateIdle();
  }

  AuthStateSuccess success() {
    return const AuthStateSuccess();
  }

  AuthStateError error(dynamic error, StackTrace stackTrace) {
    return AuthStateError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() needOtp,
    required TResult Function() idle,
    required TResult Function() success,
    required TResult Function(dynamic error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? needOtp,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? needOtp,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInit value) init,
    required TResult Function(AuthStateNeedOtp value) needOtp,
    required TResult Function(AuthStateIdle value) idle,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInit value)? init,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInit value)? init,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;

  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthStateInitCopyWith<$Res> {
  factory $AuthStateInitCopyWith(
          AuthStateInit value, $Res Function(AuthStateInit) then) =
      _$AuthStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateInitCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateInitCopyWith<$Res> {
  _$AuthStateInitCopyWithImpl(
      AuthStateInit _value, $Res Function(AuthStateInit) _then)
      : super(_value, (v) => _then(v as AuthStateInit));

  @override
  AuthStateInit get _value => super._value as AuthStateInit;
}

/// @nodoc

class _$AuthStateInit implements AuthStateInit {
  const _$AuthStateInit();

  @override
  String toString() {
    return 'AuthState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() needOtp,
    required TResult Function() idle,
    required TResult Function() success,
    required TResult Function(dynamic error, StackTrace stackTrace) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? needOtp,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? needOtp,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInit value) init,
    required TResult Function(AuthStateNeedOtp value) needOtp,
    required TResult Function(AuthStateIdle value) idle,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInit value)? init,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInit value)? init,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class AuthStateInit implements AuthState {
  const factory AuthStateInit() = _$AuthStateInit;
}

/// @nodoc
abstract class $AuthStateNeedOtpCopyWith<$Res> {
  factory $AuthStateNeedOtpCopyWith(
          AuthStateNeedOtp value, $Res Function(AuthStateNeedOtp) then) =
      _$AuthStateNeedOtpCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateNeedOtpCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateNeedOtpCopyWith<$Res> {
  _$AuthStateNeedOtpCopyWithImpl(
      AuthStateNeedOtp _value, $Res Function(AuthStateNeedOtp) _then)
      : super(_value, (v) => _then(v as AuthStateNeedOtp));

  @override
  AuthStateNeedOtp get _value => super._value as AuthStateNeedOtp;
}

/// @nodoc

class _$AuthStateNeedOtp implements AuthStateNeedOtp {
  const _$AuthStateNeedOtp();

  @override
  String toString() {
    return 'AuthState.needOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateNeedOtp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() needOtp,
    required TResult Function() idle,
    required TResult Function() success,
    required TResult Function(dynamic error, StackTrace stackTrace) error,
  }) {
    return needOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? needOtp,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
  }) {
    return needOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? needOtp,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (needOtp != null) {
      return needOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInit value) init,
    required TResult Function(AuthStateNeedOtp value) needOtp,
    required TResult Function(AuthStateIdle value) idle,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
  }) {
    return needOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInit value)? init,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
  }) {
    return needOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInit value)? init,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (needOtp != null) {
      return needOtp(this);
    }
    return orElse();
  }
}

abstract class AuthStateNeedOtp implements AuthState {
  const factory AuthStateNeedOtp() = _$AuthStateNeedOtp;
}

/// @nodoc
abstract class $AuthStateIdleCopyWith<$Res> {
  factory $AuthStateIdleCopyWith(
          AuthStateIdle value, $Res Function(AuthStateIdle) then) =
      _$AuthStateIdleCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateIdleCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateIdleCopyWith<$Res> {
  _$AuthStateIdleCopyWithImpl(
      AuthStateIdle _value, $Res Function(AuthStateIdle) _then)
      : super(_value, (v) => _then(v as AuthStateIdle));

  @override
  AuthStateIdle get _value => super._value as AuthStateIdle;
}

/// @nodoc

class _$AuthStateIdle implements AuthStateIdle {
  const _$AuthStateIdle();

  @override
  String toString() {
    return 'AuthState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() needOtp,
    required TResult Function() idle,
    required TResult Function() success,
    required TResult Function(dynamic error, StackTrace stackTrace) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? needOtp,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? needOtp,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInit value) init,
    required TResult Function(AuthStateNeedOtp value) needOtp,
    required TResult Function(AuthStateIdle value) idle,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInit value)? init,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInit value)? init,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class AuthStateIdle implements AuthState {
  const factory AuthStateIdle() = _$AuthStateIdle;
}

/// @nodoc
abstract class $AuthStateSuccessCopyWith<$Res> {
  factory $AuthStateSuccessCopyWith(
          AuthStateSuccess value, $Res Function(AuthStateSuccess) then) =
      _$AuthStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateSuccessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateSuccessCopyWith<$Res> {
  _$AuthStateSuccessCopyWithImpl(
      AuthStateSuccess _value, $Res Function(AuthStateSuccess) _then)
      : super(_value, (v) => _then(v as AuthStateSuccess));

  @override
  AuthStateSuccess get _value => super._value as AuthStateSuccess;
}

/// @nodoc

class _$AuthStateSuccess implements AuthStateSuccess {
  const _$AuthStateSuccess();

  @override
  String toString() {
    return 'AuthState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() needOtp,
    required TResult Function() idle,
    required TResult Function() success,
    required TResult Function(dynamic error, StackTrace stackTrace) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? needOtp,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? needOtp,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInit value) init,
    required TResult Function(AuthStateNeedOtp value) needOtp,
    required TResult Function(AuthStateIdle value) idle,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInit value)? init,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInit value)? init,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AuthStateSuccess implements AuthState {
  const factory AuthStateSuccess() = _$AuthStateSuccess;
}

/// @nodoc
abstract class $AuthStateErrorCopyWith<$Res> {
  factory $AuthStateErrorCopyWith(
          AuthStateError value, $Res Function(AuthStateError) then) =
      _$AuthStateErrorCopyWithImpl<$Res>;

  $Res call({dynamic error, StackTrace stackTrace});
}

/// @nodoc
class _$AuthStateErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateErrorCopyWith<$Res> {
  _$AuthStateErrorCopyWithImpl(
      AuthStateError _value, $Res Function(AuthStateError) _then)
      : super(_value, (v) => _then(v as AuthStateError));

  @override
  AuthStateError get _value => super._value as AuthStateError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(AuthStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$AuthStateError implements AuthStateError {
  const _$AuthStateError(this.error, this.stackTrace);

  @override // ignore: avoid_annotating_with_dynamic
  final dynamic error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'AuthState.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStateError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $AuthStateErrorCopyWith<AuthStateError> get copyWith =>
      _$AuthStateErrorCopyWithImpl<AuthStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() needOtp,
    required TResult Function() idle,
    required TResult Function() success,
    required TResult Function(dynamic error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? needOtp,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? needOtp,
    TResult Function()? idle,
    TResult Function()? success,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInit value) init,
    required TResult Function(AuthStateNeedOtp value) needOtp,
    required TResult Function(AuthStateIdle value) idle,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateInit value)? init,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInit value)? init,
    TResult Function(AuthStateNeedOtp value)? needOtp,
    TResult Function(AuthStateIdle value)? idle,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthStateError implements AuthState {
  const factory AuthStateError(dynamic error, StackTrace stackTrace) =
      _$AuthStateError;

// ignore: avoid_annotating_with_dynamic
  dynamic get error;

  StackTrace get stackTrace;

  @JsonKey(ignore: true)
  $AuthStateErrorCopyWith<AuthStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
