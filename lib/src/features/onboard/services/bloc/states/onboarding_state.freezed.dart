// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onboarding_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OnboardingStateTearOff {
  const _$OnboardingStateTearOff();

  OnboardingInitial initial() {
    return const OnboardingInitial();
  }

  OnboardingLoadInProgress loadInProgress() {
    return const OnboardingLoadInProgress();
  }

  OnboardingSkipSuccess skipSuccess() {
    return const OnboardingSkipSuccess();
  }
}

/// @nodoc
const $OnboardingState = _$OnboardingStateTearOff();

/// @nodoc
mixin _$OnboardingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() skipSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? skipSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? skipSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnboardingInitial value) initial,
    required TResult Function(OnboardingLoadInProgress value) loadInProgress,
    required TResult Function(OnboardingSkipSuccess value) skipSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnboardingInitial value)? initial,
    TResult Function(OnboardingLoadInProgress value)? loadInProgress,
    TResult Function(OnboardingSkipSuccess value)? skipSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnboardingInitial value)? initial,
    TResult Function(OnboardingLoadInProgress value)? loadInProgress,
    TResult Function(OnboardingSkipSuccess value)? skipSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  final OnboardingState _value;
  // ignore: unused_field
  final $Res Function(OnboardingState) _then;
}

/// @nodoc
abstract class $OnboardingInitialCopyWith<$Res> {
  factory $OnboardingInitialCopyWith(
          OnboardingInitial value, $Res Function(OnboardingInitial) then) =
      _$OnboardingInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardingInitialCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
    implements $OnboardingInitialCopyWith<$Res> {
  _$OnboardingInitialCopyWithImpl(
      OnboardingInitial _value, $Res Function(OnboardingInitial) _then)
      : super(_value, (v) => _then(v as OnboardingInitial));

  @override
  OnboardingInitial get _value => super._value as OnboardingInitial;
}

/// @nodoc

class _$OnboardingInitial implements OnboardingInitial {
  const _$OnboardingInitial();

  @override
  String toString() {
    return 'OnboardingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OnboardingInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() skipSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? skipSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? skipSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnboardingInitial value) initial,
    required TResult Function(OnboardingLoadInProgress value) loadInProgress,
    required TResult Function(OnboardingSkipSuccess value) skipSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnboardingInitial value)? initial,
    TResult Function(OnboardingLoadInProgress value)? loadInProgress,
    TResult Function(OnboardingSkipSuccess value)? skipSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnboardingInitial value)? initial,
    TResult Function(OnboardingLoadInProgress value)? loadInProgress,
    TResult Function(OnboardingSkipSuccess value)? skipSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class OnboardingInitial implements OnboardingState {
  const factory OnboardingInitial() = _$OnboardingInitial;
}

/// @nodoc
abstract class $OnboardingLoadInProgressCopyWith<$Res> {
  factory $OnboardingLoadInProgressCopyWith(OnboardingLoadInProgress value,
          $Res Function(OnboardingLoadInProgress) then) =
      _$OnboardingLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardingLoadInProgressCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
    implements $OnboardingLoadInProgressCopyWith<$Res> {
  _$OnboardingLoadInProgressCopyWithImpl(OnboardingLoadInProgress _value,
      $Res Function(OnboardingLoadInProgress) _then)
      : super(_value, (v) => _then(v as OnboardingLoadInProgress));

  @override
  OnboardingLoadInProgress get _value =>
      super._value as OnboardingLoadInProgress;
}

/// @nodoc

class _$OnboardingLoadInProgress implements OnboardingLoadInProgress {
  const _$OnboardingLoadInProgress();

  @override
  String toString() {
    return 'OnboardingState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OnboardingLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() skipSuccess,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? skipSuccess,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? skipSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnboardingInitial value) initial,
    required TResult Function(OnboardingLoadInProgress value) loadInProgress,
    required TResult Function(OnboardingSkipSuccess value) skipSuccess,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnboardingInitial value)? initial,
    TResult Function(OnboardingLoadInProgress value)? loadInProgress,
    TResult Function(OnboardingSkipSuccess value)? skipSuccess,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnboardingInitial value)? initial,
    TResult Function(OnboardingLoadInProgress value)? loadInProgress,
    TResult Function(OnboardingSkipSuccess value)? skipSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class OnboardingLoadInProgress implements OnboardingState {
  const factory OnboardingLoadInProgress() = _$OnboardingLoadInProgress;
}

/// @nodoc
abstract class $OnboardingSkipSuccessCopyWith<$Res> {
  factory $OnboardingSkipSuccessCopyWith(OnboardingSkipSuccess value,
          $Res Function(OnboardingSkipSuccess) then) =
      _$OnboardingSkipSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardingSkipSuccessCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
    implements $OnboardingSkipSuccessCopyWith<$Res> {
  _$OnboardingSkipSuccessCopyWithImpl(
      OnboardingSkipSuccess _value, $Res Function(OnboardingSkipSuccess) _then)
      : super(_value, (v) => _then(v as OnboardingSkipSuccess));

  @override
  OnboardingSkipSuccess get _value => super._value as OnboardingSkipSuccess;
}

/// @nodoc

class _$OnboardingSkipSuccess implements OnboardingSkipSuccess {
  const _$OnboardingSkipSuccess();

  @override
  String toString() {
    return 'OnboardingState.skipSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OnboardingSkipSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() skipSuccess,
  }) {
    return skipSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? skipSuccess,
  }) {
    return skipSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? skipSuccess,
    required TResult orElse(),
  }) {
    if (skipSuccess != null) {
      return skipSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnboardingInitial value) initial,
    required TResult Function(OnboardingLoadInProgress value) loadInProgress,
    required TResult Function(OnboardingSkipSuccess value) skipSuccess,
  }) {
    return skipSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnboardingInitial value)? initial,
    TResult Function(OnboardingLoadInProgress value)? loadInProgress,
    TResult Function(OnboardingSkipSuccess value)? skipSuccess,
  }) {
    return skipSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnboardingInitial value)? initial,
    TResult Function(OnboardingLoadInProgress value)? loadInProgress,
    TResult Function(OnboardingSkipSuccess value)? skipSuccess,
    required TResult orElse(),
  }) {
    if (skipSuccess != null) {
      return skipSuccess(this);
    }
    return orElse();
  }
}

abstract class OnboardingSkipSuccess implements OnboardingState {
  const factory OnboardingSkipSuccess() = _$OnboardingSkipSuccess;
}
