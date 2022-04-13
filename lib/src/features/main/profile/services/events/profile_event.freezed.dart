// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  ProfileEventGetUserProfile getUserProfile() {
    return const ProfileEventGetUserProfile();
  }

  ProfileEventSignOut signOut() {
    return const ProfileEventSignOut();
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserProfile,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getUserProfile,
    TResult Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserProfile,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileEventGetUserProfile value) getUserProfile,
    required TResult Function(ProfileEventSignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileEventGetUserProfile value)? getUserProfile,
    TResult Function(ProfileEventSignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileEventGetUserProfile value)? getUserProfile,
    TResult Function(ProfileEventSignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class $ProfileEventGetUserProfileCopyWith<$Res> {
  factory $ProfileEventGetUserProfileCopyWith(ProfileEventGetUserProfile value,
          $Res Function(ProfileEventGetUserProfile) then) =
      _$ProfileEventGetUserProfileCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventGetUserProfileCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $ProfileEventGetUserProfileCopyWith<$Res> {
  _$ProfileEventGetUserProfileCopyWithImpl(ProfileEventGetUserProfile _value,
      $Res Function(ProfileEventGetUserProfile) _then)
      : super(_value, (v) => _then(v as ProfileEventGetUserProfile));

  @override
  ProfileEventGetUserProfile get _value =>
      super._value as ProfileEventGetUserProfile;
}

/// @nodoc

class _$ProfileEventGetUserProfile implements ProfileEventGetUserProfile {
  const _$ProfileEventGetUserProfile();

  @override
  String toString() {
    return 'ProfileEvent.getUserProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileEventGetUserProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserProfile,
    required TResult Function() signOut,
  }) {
    return getUserProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getUserProfile,
    TResult Function()? signOut,
  }) {
    return getUserProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserProfile,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (getUserProfile != null) {
      return getUserProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileEventGetUserProfile value) getUserProfile,
    required TResult Function(ProfileEventSignOut value) signOut,
  }) {
    return getUserProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileEventGetUserProfile value)? getUserProfile,
    TResult Function(ProfileEventSignOut value)? signOut,
  }) {
    return getUserProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileEventGetUserProfile value)? getUserProfile,
    TResult Function(ProfileEventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (getUserProfile != null) {
      return getUserProfile(this);
    }
    return orElse();
  }
}

abstract class ProfileEventGetUserProfile implements ProfileEvent {
  const factory ProfileEventGetUserProfile() = _$ProfileEventGetUserProfile;
}

/// @nodoc
abstract class $ProfileEventSignOutCopyWith<$Res> {
  factory $ProfileEventSignOutCopyWith(
          ProfileEventSignOut value, $Res Function(ProfileEventSignOut) then) =
      _$ProfileEventSignOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventSignOutCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $ProfileEventSignOutCopyWith<$Res> {
  _$ProfileEventSignOutCopyWithImpl(
      ProfileEventSignOut _value, $Res Function(ProfileEventSignOut) _then)
      : super(_value, (v) => _then(v as ProfileEventSignOut));

  @override
  ProfileEventSignOut get _value => super._value as ProfileEventSignOut;
}

/// @nodoc

class _$ProfileEventSignOut implements ProfileEventSignOut {
  const _$ProfileEventSignOut();

  @override
  String toString() {
    return 'ProfileEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileEventSignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserProfile,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getUserProfile,
    TResult Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserProfile,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileEventGetUserProfile value) getUserProfile,
    required TResult Function(ProfileEventSignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileEventGetUserProfile value)? getUserProfile,
    TResult Function(ProfileEventSignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileEventGetUserProfile value)? getUserProfile,
    TResult Function(ProfileEventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class ProfileEventSignOut implements ProfileEvent {
  const factory ProfileEventSignOut() = _$ProfileEventSignOut;
}
