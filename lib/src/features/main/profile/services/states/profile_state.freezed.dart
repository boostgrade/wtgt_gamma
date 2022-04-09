// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  ProfileStateInit init() {
    return const ProfileStateInit();
  }

  ProfileStateLoading loading() {
    return const ProfileStateLoading();
  }

  ProfileStateLoaded loaded(User profile) {
    return ProfileStateLoaded(
      profile,
    );
  }

  ProfileStateError error(dynamic error, StackTrace stackTrace) {
    return ProfileStateError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(User profile) loaded,
    required TResult Function(dynamic error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User profile)? loaded,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User profile)? loaded,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateInit value) init,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateLoaded value) loaded,
    required TResult Function(ProfileStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileStateInit value)? init,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateLoaded value)? loaded,
    TResult Function(ProfileStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInit value)? init,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateLoaded value)? loaded,
    TResult Function(ProfileStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class $ProfileStateInitCopyWith<$Res> {
  factory $ProfileStateInitCopyWith(
          ProfileStateInit value, $Res Function(ProfileStateInit) then) =
      _$ProfileStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateInitCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateInitCopyWith<$Res> {
  _$ProfileStateInitCopyWithImpl(
      ProfileStateInit _value, $Res Function(ProfileStateInit) _then)
      : super(_value, (v) => _then(v as ProfileStateInit));

  @override
  ProfileStateInit get _value => super._value as ProfileStateInit;
}

/// @nodoc

class _$ProfileStateInit implements ProfileStateInit {
  const _$ProfileStateInit();

  @override
  String toString() {
    return 'ProfileState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(User profile) loaded,
    required TResult Function(dynamic error, StackTrace stackTrace) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User profile)? loaded,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User profile)? loaded,
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
    required TResult Function(ProfileStateInit value) init,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateLoaded value) loaded,
    required TResult Function(ProfileStateError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileStateInit value)? init,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateLoaded value)? loaded,
    TResult Function(ProfileStateError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInit value)? init,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateLoaded value)? loaded,
    TResult Function(ProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ProfileStateInit implements ProfileState {
  const factory ProfileStateInit() = _$ProfileStateInit;
}

/// @nodoc
abstract class $ProfileStateLoadingCopyWith<$Res> {
  factory $ProfileStateLoadingCopyWith(
          ProfileStateLoading value, $Res Function(ProfileStateLoading) then) =
      _$ProfileStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateLoadingCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateLoadingCopyWith<$Res> {
  _$ProfileStateLoadingCopyWithImpl(
      ProfileStateLoading _value, $Res Function(ProfileStateLoading) _then)
      : super(_value, (v) => _then(v as ProfileStateLoading));

  @override
  ProfileStateLoading get _value => super._value as ProfileStateLoading;
}

/// @nodoc

class _$ProfileStateLoading implements ProfileStateLoading {
  const _$ProfileStateLoading();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(User profile) loaded,
    required TResult Function(dynamic error, StackTrace stackTrace) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User profile)? loaded,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User profile)? loaded,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateInit value) init,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateLoaded value) loaded,
    required TResult Function(ProfileStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileStateInit value)? init,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateLoaded value)? loaded,
    TResult Function(ProfileStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInit value)? init,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateLoaded value)? loaded,
    TResult Function(ProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileStateLoading implements ProfileState {
  const factory ProfileStateLoading() = _$ProfileStateLoading;
}

/// @nodoc
abstract class $ProfileStateLoadedCopyWith<$Res> {
  factory $ProfileStateLoadedCopyWith(
          ProfileStateLoaded value, $Res Function(ProfileStateLoaded) then) =
      _$ProfileStateLoadedCopyWithImpl<$Res>;
  $Res call({User profile});
}

/// @nodoc
class _$ProfileStateLoadedCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateLoadedCopyWith<$Res> {
  _$ProfileStateLoadedCopyWithImpl(
      ProfileStateLoaded _value, $Res Function(ProfileStateLoaded) _then)
      : super(_value, (v) => _then(v as ProfileStateLoaded));

  @override
  ProfileStateLoaded get _value => super._value as ProfileStateLoaded;

  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(ProfileStateLoaded(
      profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$ProfileStateLoaded implements ProfileStateLoaded {
  const _$ProfileStateLoaded(this.profile);

  @override
  final User profile;

  @override
  String toString() {
    return 'ProfileState.loaded(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileStateLoaded &&
            const DeepCollectionEquality().equals(other.profile, profile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(profile));

  @JsonKey(ignore: true)
  @override
  $ProfileStateLoadedCopyWith<ProfileStateLoaded> get copyWith =>
      _$ProfileStateLoadedCopyWithImpl<ProfileStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(User profile) loaded,
    required TResult Function(dynamic error, StackTrace stackTrace) error,
  }) {
    return loaded(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User profile)? loaded,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
  }) {
    return loaded?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User profile)? loaded,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateInit value) init,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateLoaded value) loaded,
    required TResult Function(ProfileStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileStateInit value)? init,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateLoaded value)? loaded,
    TResult Function(ProfileStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInit value)? init,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateLoaded value)? loaded,
    TResult Function(ProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProfileStateLoaded implements ProfileState {
  const factory ProfileStateLoaded(User profile) = _$ProfileStateLoaded;

  User get profile;
  @JsonKey(ignore: true)
  $ProfileStateLoadedCopyWith<ProfileStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateErrorCopyWith<$Res> {
  factory $ProfileStateErrorCopyWith(
          ProfileStateError value, $Res Function(ProfileStateError) then) =
      _$ProfileStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error, StackTrace stackTrace});
}

/// @nodoc
class _$ProfileStateErrorCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateErrorCopyWith<$Res> {
  _$ProfileStateErrorCopyWithImpl(
      ProfileStateError _value, $Res Function(ProfileStateError) _then)
      : super(_value, (v) => _then(v as ProfileStateError));

  @override
  ProfileStateError get _value => super._value as ProfileStateError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(ProfileStateError(
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

class _$ProfileStateError implements ProfileStateError {
  const _$ProfileStateError(this.error, this.stackTrace);

  @override // ignore: avoid_annotating_with_dynamic
  final dynamic error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ProfileState.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileStateError &&
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
  $ProfileStateErrorCopyWith<ProfileStateError> get copyWith =>
      _$ProfileStateErrorCopyWithImpl<ProfileStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(User profile) loaded,
    required TResult Function(dynamic error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User profile)? loaded,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(User profile)? loaded,
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
    required TResult Function(ProfileStateInit value) init,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateLoaded value) loaded,
    required TResult Function(ProfileStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileStateInit value)? init,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateLoaded value)? loaded,
    TResult Function(ProfileStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInit value)? init,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateLoaded value)? loaded,
    TResult Function(ProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProfileStateError implements ProfileState {
  const factory ProfileStateError(dynamic error, StackTrace stackTrace) =
      _$ProfileStateError;

// ignore: avoid_annotating_with_dynamic
  dynamic get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $ProfileStateErrorCopyWith<ProfileStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
