// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  AuthEventSendPhone sendPhone(String phone) {
    return AuthEventSendPhone(
      phone,
    );
  }

  AuthEventSendOtp sendOtp(String code) {
    return AuthEventSendOtp(
      code,
    );
  }

  AuthEventLoginViaFacebook loginViaFacebook() {
    return const AuthEventLoginViaFacebook();
  }

  AuthEventLoginViaVkontakte loginViaVkontakte() {
    return const AuthEventLoginViaVkontakte();
  }

  AuthEventLoginViaGoogle loginViaGoogle() {
    return const AuthEventLoginViaGoogle();
  }

  AuthEventRegister register(String name, String surname, String email,
      DateTime birthdate, bool agree) {
    return AuthEventRegister(
      name,
      surname,
      email,
      birthdate,
      agree,
    );
  }

  AuthEventLogout logout() {
    return const AuthEventLogout();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendPhone,
    required TResult Function(String code) sendOtp,
    required TResult Function() loginViaFacebook,
    required TResult Function() loginViaVkontakte,
    required TResult Function() loginViaGoogle,
    required TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)
        register,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? sendOtp,
    TResult Function()? loginViaFacebook,
    TResult Function()? loginViaVkontakte,
    TResult Function()? loginViaGoogle,
    TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)?
        register,
    TResult Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? sendOtp,
    TResult Function()? loginViaFacebook,
    TResult Function()? loginViaVkontakte,
    TResult Function()? loginViaGoogle,
    TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)?
        register,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventSendPhone value) sendPhone,
    required TResult Function(AuthEventSendOtp value) sendOtp,
    required TResult Function(AuthEventLoginViaFacebook value) loginViaFacebook,
    required TResult Function(AuthEventLoginViaVkontakte value)
        loginViaVkontakte,
    required TResult Function(AuthEventLoginViaGoogle value) loginViaGoogle,
    required TResult Function(AuthEventRegister value) register,
    required TResult Function(AuthEventLogout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventSendPhone value)? sendPhone,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    TResult Function(AuthEventLoginViaFacebook value)? loginViaFacebook,
    TResult Function(AuthEventLoginViaVkontakte value)? loginViaVkontakte,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventLogout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventSendPhone value)? sendPhone,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    TResult Function(AuthEventLoginViaFacebook value)? loginViaFacebook,
    TResult Function(AuthEventLoginViaVkontakte value)? loginViaVkontakte,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventLogout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $AuthEventSendPhoneCopyWith<$Res> {
  factory $AuthEventSendPhoneCopyWith(
          AuthEventSendPhone value, $Res Function(AuthEventSendPhone) then) =
      _$AuthEventSendPhoneCopyWithImpl<$Res>;
  $Res call({String phone});
}

/// @nodoc
class _$AuthEventSendPhoneCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventSendPhoneCopyWith<$Res> {
  _$AuthEventSendPhoneCopyWithImpl(
      AuthEventSendPhone _value, $Res Function(AuthEventSendPhone) _then)
      : super(_value, (v) => _then(v as AuthEventSendPhone));

  @override
  AuthEventSendPhone get _value => super._value as AuthEventSendPhone;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(AuthEventSendPhone(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthEventSendPhone implements AuthEventSendPhone {
  const _$AuthEventSendPhone(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'AuthEvent.sendPhone(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthEventSendPhone &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  $AuthEventSendPhoneCopyWith<AuthEventSendPhone> get copyWith =>
      _$AuthEventSendPhoneCopyWithImpl<AuthEventSendPhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendPhone,
    required TResult Function(String code) sendOtp,
    required TResult Function() loginViaFacebook,
    required TResult Function() loginViaVkontakte,
    required TResult Function() loginViaGoogle,
    required TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)
        register,
    required TResult Function() logout,
  }) {
    return sendPhone(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? sendOtp,
    TResult Function()? loginViaFacebook,
    TResult Function()? loginViaVkontakte,
    TResult Function()? loginViaGoogle,
    TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)?
        register,
    TResult Function()? logout,
  }) {
    return sendPhone?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? sendOtp,
    TResult Function()? loginViaFacebook,
    TResult Function()? loginViaVkontakte,
    TResult Function()? loginViaGoogle,
    TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)?
        register,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (sendPhone != null) {
      return sendPhone(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventSendPhone value) sendPhone,
    required TResult Function(AuthEventSendOtp value) sendOtp,
    required TResult Function(AuthEventLoginViaFacebook value) loginViaFacebook,
    required TResult Function(AuthEventLoginViaVkontakte value)
        loginViaVkontakte,
    required TResult Function(AuthEventLoginViaGoogle value) loginViaGoogle,
    required TResult Function(AuthEventRegister value) register,
    required TResult Function(AuthEventLogout value) logout,
  }) {
    return sendPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventSendPhone value)? sendPhone,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    TResult Function(AuthEventLoginViaFacebook value)? loginViaFacebook,
    TResult Function(AuthEventLoginViaVkontakte value)? loginViaVkontakte,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventLogout value)? logout,
  }) {
    return sendPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventSendPhone value)? sendPhone,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    TResult Function(AuthEventLoginViaFacebook value)? loginViaFacebook,
    TResult Function(AuthEventLoginViaVkontakte value)? loginViaVkontakte,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (sendPhone != null) {
      return sendPhone(this);
    }
    return orElse();
  }
}

abstract class AuthEventSendPhone implements AuthEvent {
  const factory AuthEventSendPhone(String phone) = _$AuthEventSendPhone;

  String get phone;
  @JsonKey(ignore: true)
  $AuthEventSendPhoneCopyWith<AuthEventSendPhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventSendOtpCopyWith<$Res> {
  factory $AuthEventSendOtpCopyWith(
          AuthEventSendOtp value, $Res Function(AuthEventSendOtp) then) =
      _$AuthEventSendOtpCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class _$AuthEventSendOtpCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventSendOtpCopyWith<$Res> {
  _$AuthEventSendOtpCopyWithImpl(
      AuthEventSendOtp _value, $Res Function(AuthEventSendOtp) _then)
      : super(_value, (v) => _then(v as AuthEventSendOtp));

  @override
  AuthEventSendOtp get _value => super._value as AuthEventSendOtp;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(AuthEventSendOtp(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthEventSendOtp implements AuthEventSendOtp {
  const _$AuthEventSendOtp(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'AuthEvent.sendOtp(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthEventSendOtp &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  $AuthEventSendOtpCopyWith<AuthEventSendOtp> get copyWith =>
      _$AuthEventSendOtpCopyWithImpl<AuthEventSendOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendPhone,
    required TResult Function(String code) sendOtp,
    required TResult Function() loginViaFacebook,
    required TResult Function() loginViaVkontakte,
    required TResult Function() loginViaGoogle,
    required TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)
        register,
    required TResult Function() logout,
  }) {
    return sendOtp(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? sendOtp,
    TResult Function()? loginViaFacebook,
    TResult Function()? loginViaVkontakte,
    TResult Function()? loginViaGoogle,
    TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)?
        register,
    TResult Function()? logout,
  }) {
    return sendOtp?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? sendOtp,
    TResult Function()? loginViaFacebook,
    TResult Function()? loginViaVkontakte,
    TResult Function()? loginViaGoogle,
    TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)?
        register,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventSendPhone value) sendPhone,
    required TResult Function(AuthEventSendOtp value) sendOtp,
    required TResult Function(AuthEventLoginViaFacebook value) loginViaFacebook,
    required TResult Function(AuthEventLoginViaVkontakte value)
        loginViaVkontakte,
    required TResult Function(AuthEventLoginViaGoogle value) loginViaGoogle,
    required TResult Function(AuthEventRegister value) register,
    required TResult Function(AuthEventLogout value) logout,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventSendPhone value)? sendPhone,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    TResult Function(AuthEventLoginViaFacebook value)? loginViaFacebook,
    TResult Function(AuthEventLoginViaVkontakte value)? loginViaVkontakte,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventLogout value)? logout,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventSendPhone value)? sendPhone,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    TResult Function(AuthEventLoginViaFacebook value)? loginViaFacebook,
    TResult Function(AuthEventLoginViaVkontakte value)? loginViaVkontakte,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class AuthEventSendOtp implements AuthEvent {
  const factory AuthEventSendOtp(String code) = _$AuthEventSendOtp;

  String get code;
  @JsonKey(ignore: true)
  $AuthEventSendOtpCopyWith<AuthEventSendOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventLoginViaFacebookCopyWith<$Res> {
  factory $AuthEventLoginViaFacebookCopyWith(AuthEventLoginViaFacebook value,
          $Res Function(AuthEventLoginViaFacebook) then) =
      _$AuthEventLoginViaFacebookCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventLoginViaFacebookCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoginViaFacebookCopyWith<$Res> {
  _$AuthEventLoginViaFacebookCopyWithImpl(AuthEventLoginViaFacebook _value,
      $Res Function(AuthEventLoginViaFacebook) _then)
      : super(_value, (v) => _then(v as AuthEventLoginViaFacebook));

  @override
  AuthEventLoginViaFacebook get _value =>
      super._value as AuthEventLoginViaFacebook;
}

/// @nodoc

class _$AuthEventLoginViaFacebook implements AuthEventLoginViaFacebook {
  const _$AuthEventLoginViaFacebook();

  @override
  String toString() {
    return 'AuthEvent.loginViaFacebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthEventLoginViaFacebook);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendPhone,
    required TResult Function(String code) sendOtp,
    required TResult Function() loginViaFacebook,
    required TResult Function() loginViaVkontakte,
    required TResult Function() loginViaGoogle,
    required TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)
        register,
    required TResult Function() logout,
  }) {
    return loginViaFacebook();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? sendOtp,
    TResult Function()? loginViaFacebook,
    TResult Function()? loginViaVkontakte,
    TResult Function()? loginViaGoogle,
    TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)?
        register,
    TResult Function()? logout,
  }) {
    return loginViaFacebook?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? sendOtp,
    TResult Function()? loginViaFacebook,
    TResult Function()? loginViaVkontakte,
    TResult Function()? loginViaGoogle,
    TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)?
        register,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loginViaFacebook != null) {
      return loginViaFacebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventSendPhone value) sendPhone,
    required TResult Function(AuthEventSendOtp value) sendOtp,
    required TResult Function(AuthEventLoginViaFacebook value) loginViaFacebook,
    required TResult Function(AuthEventLoginViaVkontakte value)
        loginViaVkontakte,
    required TResult Function(AuthEventLoginViaGoogle value) loginViaGoogle,
    required TResult Function(AuthEventRegister value) register,
    required TResult Function(AuthEventLogout value) logout,
  }) {
    return loginViaFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventSendPhone value)? sendPhone,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    TResult Function(AuthEventLoginViaFacebook value)? loginViaFacebook,
    TResult Function(AuthEventLoginViaVkontakte value)? loginViaVkontakte,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventLogout value)? logout,
  }) {
    return loginViaFacebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventSendPhone value)? sendPhone,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    TResult Function(AuthEventLoginViaFacebook value)? loginViaFacebook,
    TResult Function(AuthEventLoginViaVkontakte value)? loginViaVkontakte,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (loginViaFacebook != null) {
      return loginViaFacebook(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoginViaFacebook implements AuthEvent {
  const factory AuthEventLoginViaFacebook() = _$AuthEventLoginViaFacebook;
}

/// @nodoc
abstract class $AuthEventLoginViaVkontakteCopyWith<$Res> {
  factory $AuthEventLoginViaVkontakteCopyWith(AuthEventLoginViaVkontakte value,
          $Res Function(AuthEventLoginViaVkontakte) then) =
      _$AuthEventLoginViaVkontakteCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventLoginViaVkontakteCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoginViaVkontakteCopyWith<$Res> {
  _$AuthEventLoginViaVkontakteCopyWithImpl(AuthEventLoginViaVkontakte _value,
      $Res Function(AuthEventLoginViaVkontakte) _then)
      : super(_value, (v) => _then(v as AuthEventLoginViaVkontakte));

  @override
  AuthEventLoginViaVkontakte get _value =>
      super._value as AuthEventLoginViaVkontakte;
}

/// @nodoc

class _$AuthEventLoginViaVkontakte implements AuthEventLoginViaVkontakte {
  const _$AuthEventLoginViaVkontakte();

  @override
  String toString() {
    return 'AuthEvent.loginViaVkontakte()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthEventLoginViaVkontakte);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendPhone,
    required TResult Function(String code) sendOtp,
    required TResult Function() loginViaFacebook,
    required TResult Function() loginViaVkontakte,
    required TResult Function() loginViaGoogle,
    required TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)
        register,
    required TResult Function() logout,
  }) {
    return loginViaVkontakte();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? sendOtp,
    TResult Function()? loginViaFacebook,
    TResult Function()? loginViaVkontakte,
    TResult Function()? loginViaGoogle,
    TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)?
        register,
    TResult Function()? logout,
  }) {
    return loginViaVkontakte?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? sendOtp,
    TResult Function()? loginViaFacebook,
    TResult Function()? loginViaVkontakte,
    TResult Function()? loginViaGoogle,
    TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)?
        register,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loginViaVkontakte != null) {
      return loginViaVkontakte();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventSendPhone value) sendPhone,
    required TResult Function(AuthEventSendOtp value) sendOtp,
    required TResult Function(AuthEventLoginViaFacebook value) loginViaFacebook,
    required TResult Function(AuthEventLoginViaVkontakte value)
        loginViaVkontakte,
    required TResult Function(AuthEventLoginViaGoogle value) loginViaGoogle,
    required TResult Function(AuthEventRegister value) register,
    required TResult Function(AuthEventLogout value) logout,
  }) {
    return loginViaVkontakte(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventSendPhone value)? sendPhone,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    TResult Function(AuthEventLoginViaFacebook value)? loginViaFacebook,
    TResult Function(AuthEventLoginViaVkontakte value)? loginViaVkontakte,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventLogout value)? logout,
  }) {
    return loginViaVkontakte?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventSendPhone value)? sendPhone,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    TResult Function(AuthEventLoginViaFacebook value)? loginViaFacebook,
    TResult Function(AuthEventLoginViaVkontakte value)? loginViaVkontakte,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (loginViaVkontakte != null) {
      return loginViaVkontakte(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoginViaVkontakte implements AuthEvent {
  const factory AuthEventLoginViaVkontakte() = _$AuthEventLoginViaVkontakte;
}

/// @nodoc
abstract class $AuthEventLoginViaGoogleCopyWith<$Res> {
  factory $AuthEventLoginViaGoogleCopyWith(AuthEventLoginViaGoogle value,
          $Res Function(AuthEventLoginViaGoogle) then) =
      _$AuthEventLoginViaGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventLoginViaGoogleCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoginViaGoogleCopyWith<$Res> {
  _$AuthEventLoginViaGoogleCopyWithImpl(AuthEventLoginViaGoogle _value,
      $Res Function(AuthEventLoginViaGoogle) _then)
      : super(_value, (v) => _then(v as AuthEventLoginViaGoogle));

  @override
  AuthEventLoginViaGoogle get _value => super._value as AuthEventLoginViaGoogle;
}

/// @nodoc

class _$AuthEventLoginViaGoogle implements AuthEventLoginViaGoogle {
  const _$AuthEventLoginViaGoogle();

  @override
  String toString() {
    return 'AuthEvent.loginViaGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthEventLoginViaGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendPhone,
    required TResult Function(String code) sendOtp,
    required TResult Function() loginViaFacebook,
    required TResult Function() loginViaVkontakte,
    required TResult Function() loginViaGoogle,
    required TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)
        register,
    required TResult Function() logout,
  }) {
    return loginViaGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? sendOtp,
    TResult Function()? loginViaFacebook,
    TResult Function()? loginViaVkontakte,
    TResult Function()? loginViaGoogle,
    TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)?
        register,
    TResult Function()? logout,
  }) {
    return loginViaGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? sendOtp,
    TResult Function()? loginViaFacebook,
    TResult Function()? loginViaVkontakte,
    TResult Function()? loginViaGoogle,
    TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)?
        register,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loginViaGoogle != null) {
      return loginViaGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventSendPhone value) sendPhone,
    required TResult Function(AuthEventSendOtp value) sendOtp,
    required TResult Function(AuthEventLoginViaFacebook value) loginViaFacebook,
    required TResult Function(AuthEventLoginViaVkontakte value)
        loginViaVkontakte,
    required TResult Function(AuthEventLoginViaGoogle value) loginViaGoogle,
    required TResult Function(AuthEventRegister value) register,
    required TResult Function(AuthEventLogout value) logout,
  }) {
    return loginViaGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventSendPhone value)? sendPhone,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    TResult Function(AuthEventLoginViaFacebook value)? loginViaFacebook,
    TResult Function(AuthEventLoginViaVkontakte value)? loginViaVkontakte,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventLogout value)? logout,
  }) {
    return loginViaGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventSendPhone value)? sendPhone,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    TResult Function(AuthEventLoginViaFacebook value)? loginViaFacebook,
    TResult Function(AuthEventLoginViaVkontakte value)? loginViaVkontakte,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (loginViaGoogle != null) {
      return loginViaGoogle(this);
    }
    return orElse();
  }
}

abstract class AuthEventLoginViaGoogle implements AuthEvent {
  const factory AuthEventLoginViaGoogle() = _$AuthEventLoginViaGoogle;
}

/// @nodoc
abstract class $AuthEventRegisterCopyWith<$Res> {
  factory $AuthEventRegisterCopyWith(
          AuthEventRegister value, $Res Function(AuthEventRegister) then) =
      _$AuthEventRegisterCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String surname,
      String email,
      DateTime birthdate,
      bool agree});
}

/// @nodoc
class _$AuthEventRegisterCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventRegisterCopyWith<$Res> {
  _$AuthEventRegisterCopyWithImpl(
      AuthEventRegister _value, $Res Function(AuthEventRegister) _then)
      : super(_value, (v) => _then(v as AuthEventRegister));

  @override
  AuthEventRegister get _value => super._value as AuthEventRegister;

  @override
  $Res call({
    Object? name = freezed,
    Object? surname = freezed,
    Object? email = freezed,
    Object? birthdate = freezed,
    Object? agree = freezed,
  }) {
    return _then(AuthEventRegister(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate == freezed
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      agree == freezed
          ? _value.agree
          : agree // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthEventRegister implements AuthEventRegister {
  const _$AuthEventRegister(
      this.name, this.surname, this.email, this.birthdate, this.agree);

  @override
  final String name;
  @override
  final String surname;
  @override
  final String email;
  @override
  final DateTime birthdate;
  @override
  final bool agree;

  @override
  String toString() {
    return 'AuthEvent.register(name: $name, surname: $surname, email: $email, birthdate: $birthdate, agree: $agree)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthEventRegister &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.surname, surname) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.birthdate, birthdate) &&
            const DeepCollectionEquality().equals(other.agree, agree));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(surname),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(birthdate),
      const DeepCollectionEquality().hash(agree));

  @JsonKey(ignore: true)
  @override
  $AuthEventRegisterCopyWith<AuthEventRegister> get copyWith =>
      _$AuthEventRegisterCopyWithImpl<AuthEventRegister>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendPhone,
    required TResult Function(String code) sendOtp,
    required TResult Function() loginViaFacebook,
    required TResult Function() loginViaVkontakte,
    required TResult Function() loginViaGoogle,
    required TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)
        register,
    required TResult Function() logout,
  }) {
    return register(name, surname, email, birthdate, agree);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? sendOtp,
    TResult Function()? loginViaFacebook,
    TResult Function()? loginViaVkontakte,
    TResult Function()? loginViaGoogle,
    TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)?
        register,
    TResult Function()? logout,
  }) {
    return register?.call(name, surname, email, birthdate, agree);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? sendOtp,
    TResult Function()? loginViaFacebook,
    TResult Function()? loginViaVkontakte,
    TResult Function()? loginViaGoogle,
    TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)?
        register,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(name, surname, email, birthdate, agree);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventSendPhone value) sendPhone,
    required TResult Function(AuthEventSendOtp value) sendOtp,
    required TResult Function(AuthEventLoginViaFacebook value) loginViaFacebook,
    required TResult Function(AuthEventLoginViaVkontakte value)
        loginViaVkontakte,
    required TResult Function(AuthEventLoginViaGoogle value) loginViaGoogle,
    required TResult Function(AuthEventRegister value) register,
    required TResult Function(AuthEventLogout value) logout,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventSendPhone value)? sendPhone,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    TResult Function(AuthEventLoginViaFacebook value)? loginViaFacebook,
    TResult Function(AuthEventLoginViaVkontakte value)? loginViaVkontakte,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventLogout value)? logout,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventSendPhone value)? sendPhone,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    TResult Function(AuthEventLoginViaFacebook value)? loginViaFacebook,
    TResult Function(AuthEventLoginViaVkontakte value)? loginViaVkontakte,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class AuthEventRegister implements AuthEvent {
  const factory AuthEventRegister(String name, String surname, String email,
      DateTime birthdate, bool agree) = _$AuthEventRegister;

  String get name;
  String get surname;
  String get email;
  DateTime get birthdate;
  bool get agree;
  @JsonKey(ignore: true)
  $AuthEventRegisterCopyWith<AuthEventRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventLogoutCopyWith<$Res> {
  factory $AuthEventLogoutCopyWith(
          AuthEventLogout value, $Res Function(AuthEventLogout) then) =
      _$AuthEventLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventLogoutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLogoutCopyWith<$Res> {
  _$AuthEventLogoutCopyWithImpl(
      AuthEventLogout _value, $Res Function(AuthEventLogout) _then)
      : super(_value, (v) => _then(v as AuthEventLogout));

  @override
  AuthEventLogout get _value => super._value as AuthEventLogout;
}

/// @nodoc

class _$AuthEventLogout implements AuthEventLogout {
  const _$AuthEventLogout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthEventLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendPhone,
    required TResult Function(String code) sendOtp,
    required TResult Function() loginViaFacebook,
    required TResult Function() loginViaVkontakte,
    required TResult Function() loginViaGoogle,
    required TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)
        register,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? sendOtp,
    TResult Function()? loginViaFacebook,
    TResult Function()? loginViaVkontakte,
    TResult Function()? loginViaGoogle,
    TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)?
        register,
    TResult Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendPhone,
    TResult Function(String code)? sendOtp,
    TResult Function()? loginViaFacebook,
    TResult Function()? loginViaVkontakte,
    TResult Function()? loginViaGoogle,
    TResult Function(String name, String surname, String email,
            DateTime birthdate, bool agree)?
        register,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventSendPhone value) sendPhone,
    required TResult Function(AuthEventSendOtp value) sendOtp,
    required TResult Function(AuthEventLoginViaFacebook value) loginViaFacebook,
    required TResult Function(AuthEventLoginViaVkontakte value)
        loginViaVkontakte,
    required TResult Function(AuthEventLoginViaGoogle value) loginViaGoogle,
    required TResult Function(AuthEventRegister value) register,
    required TResult Function(AuthEventLogout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventSendPhone value)? sendPhone,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    TResult Function(AuthEventLoginViaFacebook value)? loginViaFacebook,
    TResult Function(AuthEventLoginViaVkontakte value)? loginViaVkontakte,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventLogout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventSendPhone value)? sendPhone,
    TResult Function(AuthEventSendOtp value)? sendOtp,
    TResult Function(AuthEventLoginViaFacebook value)? loginViaFacebook,
    TResult Function(AuthEventLoginViaVkontakte value)? loginViaVkontakte,
    TResult Function(AuthEventLoginViaGoogle value)? loginViaGoogle,
    TResult Function(AuthEventRegister value)? register,
    TResult Function(AuthEventLogout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class AuthEventLogout implements AuthEvent {
  const factory AuthEventLogout() = _$AuthEventLogout;
}
