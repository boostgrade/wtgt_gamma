// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'places_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlacesStateTearOff {
  const _$PlacesStateTearOff();

  PlacesStateInit init() {
    return const PlacesStateInit();
  }

  PlacesStateLoading loading() {
    return const PlacesStateLoading();
  }

  PlacesStateLoaded loaded(List<Place> places) {
    return PlacesStateLoaded(
      places,
    );
  }

  PlacesStateError error(dynamic error, StackTrace stackTrace) {
    return PlacesStateError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $PlacesState = _$PlacesStateTearOff();

/// @nodoc
mixin _$PlacesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Place> places) loaded,
    required TResult Function(dynamic error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlacesStateInit value) init,
    required TResult Function(PlacesStateLoading value) loading,
    required TResult Function(PlacesStateLoaded value) loaded,
    required TResult Function(PlacesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesStateInit value)? init,
    TResult Function(PlacesStateLoading value)? loading,
    TResult Function(PlacesStateLoaded value)? loaded,
    TResult Function(PlacesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesStateInit value)? init,
    TResult Function(PlacesStateLoading value)? loading,
    TResult Function(PlacesStateLoaded value)? loaded,
    TResult Function(PlacesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesStateCopyWith<$Res> {
  factory $PlacesStateCopyWith(
          PlacesState value, $Res Function(PlacesState) then) =
      _$PlacesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlacesStateCopyWithImpl<$Res> implements $PlacesStateCopyWith<$Res> {
  _$PlacesStateCopyWithImpl(this._value, this._then);

  final PlacesState _value;
  // ignore: unused_field
  final $Res Function(PlacesState) _then;
}

/// @nodoc
abstract class $PlacesStateInitCopyWith<$Res> {
  factory $PlacesStateInitCopyWith(
          PlacesStateInit value, $Res Function(PlacesStateInit) then) =
      _$PlacesStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlacesStateInitCopyWithImpl<$Res>
    extends _$PlacesStateCopyWithImpl<$Res>
    implements $PlacesStateInitCopyWith<$Res> {
  _$PlacesStateInitCopyWithImpl(
      PlacesStateInit _value, $Res Function(PlacesStateInit) _then)
      : super(_value, (v) => _then(v as PlacesStateInit));

  @override
  PlacesStateInit get _value => super._value as PlacesStateInit;
}

/// @nodoc

class _$PlacesStateInit implements PlacesStateInit {
  const _$PlacesStateInit();

  @override
  String toString() {
    return 'PlacesState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PlacesStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Place> places) loaded,
    required TResult Function(dynamic error, StackTrace stackTrace) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
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
    required TResult Function(PlacesStateInit value) init,
    required TResult Function(PlacesStateLoading value) loading,
    required TResult Function(PlacesStateLoaded value) loaded,
    required TResult Function(PlacesStateError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesStateInit value)? init,
    TResult Function(PlacesStateLoading value)? loading,
    TResult Function(PlacesStateLoaded value)? loaded,
    TResult Function(PlacesStateError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesStateInit value)? init,
    TResult Function(PlacesStateLoading value)? loading,
    TResult Function(PlacesStateLoaded value)? loaded,
    TResult Function(PlacesStateError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class PlacesStateInit implements PlacesState {
  const factory PlacesStateInit() = _$PlacesStateInit;
}

/// @nodoc
abstract class $PlacesStateLoadingCopyWith<$Res> {
  factory $PlacesStateLoadingCopyWith(
          PlacesStateLoading value, $Res Function(PlacesStateLoading) then) =
      _$PlacesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlacesStateLoadingCopyWithImpl<$Res>
    extends _$PlacesStateCopyWithImpl<$Res>
    implements $PlacesStateLoadingCopyWith<$Res> {
  _$PlacesStateLoadingCopyWithImpl(
      PlacesStateLoading _value, $Res Function(PlacesStateLoading) _then)
      : super(_value, (v) => _then(v as PlacesStateLoading));

  @override
  PlacesStateLoading get _value => super._value as PlacesStateLoading;
}

/// @nodoc

class _$PlacesStateLoading implements PlacesStateLoading {
  const _$PlacesStateLoading();

  @override
  String toString() {
    return 'PlacesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PlacesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Place> places) loaded,
    required TResult Function(dynamic error, StackTrace stackTrace) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
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
    required TResult Function(PlacesStateInit value) init,
    required TResult Function(PlacesStateLoading value) loading,
    required TResult Function(PlacesStateLoaded value) loaded,
    required TResult Function(PlacesStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesStateInit value)? init,
    TResult Function(PlacesStateLoading value)? loading,
    TResult Function(PlacesStateLoaded value)? loaded,
    TResult Function(PlacesStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesStateInit value)? init,
    TResult Function(PlacesStateLoading value)? loading,
    TResult Function(PlacesStateLoaded value)? loaded,
    TResult Function(PlacesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PlacesStateLoading implements PlacesState {
  const factory PlacesStateLoading() = _$PlacesStateLoading;
}

/// @nodoc
abstract class $PlacesStateLoadedCopyWith<$Res> {
  factory $PlacesStateLoadedCopyWith(
          PlacesStateLoaded value, $Res Function(PlacesStateLoaded) then) =
      _$PlacesStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Place> places});
}

/// @nodoc
class _$PlacesStateLoadedCopyWithImpl<$Res>
    extends _$PlacesStateCopyWithImpl<$Res>
    implements $PlacesStateLoadedCopyWith<$Res> {
  _$PlacesStateLoadedCopyWithImpl(
      PlacesStateLoaded _value, $Res Function(PlacesStateLoaded) _then)
      : super(_value, (v) => _then(v as PlacesStateLoaded));

  @override
  PlacesStateLoaded get _value => super._value as PlacesStateLoaded;

  @override
  $Res call({
    Object? places = freezed,
  }) {
    return _then(PlacesStateLoaded(
      places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc

class _$PlacesStateLoaded implements PlacesStateLoaded {
  const _$PlacesStateLoaded(this.places);

  @override
  final List<Place> places;

  @override
  String toString() {
    return 'PlacesState.loaded(places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlacesStateLoaded &&
            const DeepCollectionEquality().equals(other.places, places));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(places));

  @JsonKey(ignore: true)
  @override
  $PlacesStateLoadedCopyWith<PlacesStateLoaded> get copyWith =>
      _$PlacesStateLoadedCopyWithImpl<PlacesStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Place> places) loaded,
    required TResult Function(dynamic error, StackTrace stackTrace) error,
  }) {
    return loaded(places);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
  }) {
    return loaded?.call(places);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(places);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlacesStateInit value) init,
    required TResult Function(PlacesStateLoading value) loading,
    required TResult Function(PlacesStateLoaded value) loaded,
    required TResult Function(PlacesStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesStateInit value)? init,
    TResult Function(PlacesStateLoading value)? loading,
    TResult Function(PlacesStateLoaded value)? loaded,
    TResult Function(PlacesStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesStateInit value)? init,
    TResult Function(PlacesStateLoading value)? loading,
    TResult Function(PlacesStateLoaded value)? loaded,
    TResult Function(PlacesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PlacesStateLoaded implements PlacesState {
  const factory PlacesStateLoaded(List<Place> places) = _$PlacesStateLoaded;

  List<Place> get places;
  @JsonKey(ignore: true)
  $PlacesStateLoadedCopyWith<PlacesStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesStateErrorCopyWith<$Res> {
  factory $PlacesStateErrorCopyWith(
          PlacesStateError value, $Res Function(PlacesStateError) then) =
      _$PlacesStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error, StackTrace stackTrace});
}

/// @nodoc
class _$PlacesStateErrorCopyWithImpl<$Res>
    extends _$PlacesStateCopyWithImpl<$Res>
    implements $PlacesStateErrorCopyWith<$Res> {
  _$PlacesStateErrorCopyWithImpl(
      PlacesStateError _value, $Res Function(PlacesStateError) _then)
      : super(_value, (v) => _then(v as PlacesStateError));

  @override
  PlacesStateError get _value => super._value as PlacesStateError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(PlacesStateError(
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

class _$PlacesStateError implements PlacesStateError {
  const _$PlacesStateError(this.error, this.stackTrace);

  @override // ignore: avoid_annotating_with_dynamic
  final dynamic error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'PlacesState.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlacesStateError &&
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
  $PlacesStateErrorCopyWith<PlacesStateError> get copyWith =>
      _$PlacesStateErrorCopyWithImpl<PlacesStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(List<Place> places) loaded,
    required TResult Function(dynamic error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
    TResult Function(dynamic error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
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
    required TResult Function(PlacesStateInit value) init,
    required TResult Function(PlacesStateLoading value) loading,
    required TResult Function(PlacesStateLoaded value) loaded,
    required TResult Function(PlacesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesStateInit value)? init,
    TResult Function(PlacesStateLoading value)? loading,
    TResult Function(PlacesStateLoaded value)? loaded,
    TResult Function(PlacesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesStateInit value)? init,
    TResult Function(PlacesStateLoading value)? loading,
    TResult Function(PlacesStateLoaded value)? loaded,
    TResult Function(PlacesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PlacesStateError implements PlacesState {
  const factory PlacesStateError(dynamic error, StackTrace stackTrace) =
      _$PlacesStateError;

// ignore: avoid_annotating_with_dynamic
  dynamic get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $PlacesStateErrorCopyWith<PlacesStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
