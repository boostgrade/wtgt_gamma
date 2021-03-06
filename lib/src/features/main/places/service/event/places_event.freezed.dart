// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'places_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlacesEventTearOff {
  const _$PlacesEventTearOff();

  PlacesEventGetPlaces getPlaces(int page, String searchText) {
    return PlacesEventGetPlaces(
      page,
      searchText,
    );
  }
}

/// @nodoc
const $PlacesEvent = _$PlacesEventTearOff();

/// @nodoc
mixin _$PlacesEvent {
  int get page => throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, String searchText) getPlaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, String searchText)? getPlaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String searchText)? getPlaces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlacesEventGetPlaces value) getPlaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesEventGetPlaces value)? getPlaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesEventGetPlaces value)? getPlaces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlacesEventCopyWith<PlacesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesEventCopyWith<$Res> {
  factory $PlacesEventCopyWith(
          PlacesEvent value, $Res Function(PlacesEvent) then) =
      _$PlacesEventCopyWithImpl<$Res>;
  $Res call({int page, String searchText});
}

/// @nodoc
class _$PlacesEventCopyWithImpl<$Res> implements $PlacesEventCopyWith<$Res> {
  _$PlacesEventCopyWithImpl(this._value, this._then);

  final PlacesEvent _value;
  // ignore: unused_field
  final $Res Function(PlacesEvent) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? searchText = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      searchText: searchText == freezed
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $PlacesEventGetPlacesCopyWith<$Res>
    implements $PlacesEventCopyWith<$Res> {
  factory $PlacesEventGetPlacesCopyWith(PlacesEventGetPlaces value,
          $Res Function(PlacesEventGetPlaces) then) =
      _$PlacesEventGetPlacesCopyWithImpl<$Res>;
  @override
  $Res call({int page, String searchText});
}

/// @nodoc
class _$PlacesEventGetPlacesCopyWithImpl<$Res>
    extends _$PlacesEventCopyWithImpl<$Res>
    implements $PlacesEventGetPlacesCopyWith<$Res> {
  _$PlacesEventGetPlacesCopyWithImpl(
      PlacesEventGetPlaces _value, $Res Function(PlacesEventGetPlaces) _then)
      : super(_value, (v) => _then(v as PlacesEventGetPlaces));

  @override
  PlacesEventGetPlaces get _value => super._value as PlacesEventGetPlaces;

  @override
  $Res call({
    Object? page = freezed,
    Object? searchText = freezed,
  }) {
    return _then(PlacesEventGetPlaces(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      searchText == freezed
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlacesEventGetPlaces implements PlacesEventGetPlaces {
  const _$PlacesEventGetPlaces(this.page, this.searchText);

  @override
  final int page;
  @override
  final String searchText;

  @override
  String toString() {
    return 'PlacesEvent.getPlaces(page: $page, searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlacesEventGetPlaces &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other.searchText, searchText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(searchText));

  @JsonKey(ignore: true)
  @override
  $PlacesEventGetPlacesCopyWith<PlacesEventGetPlaces> get copyWith =>
      _$PlacesEventGetPlacesCopyWithImpl<PlacesEventGetPlaces>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, String searchText) getPlaces,
  }) {
    return getPlaces(page, searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, String searchText)? getPlaces,
  }) {
    return getPlaces?.call(page, searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String searchText)? getPlaces,
    required TResult orElse(),
  }) {
    if (getPlaces != null) {
      return getPlaces(page, searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlacesEventGetPlaces value) getPlaces,
  }) {
    return getPlaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesEventGetPlaces value)? getPlaces,
  }) {
    return getPlaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesEventGetPlaces value)? getPlaces,
    required TResult orElse(),
  }) {
    if (getPlaces != null) {
      return getPlaces(this);
    }
    return orElse();
  }
}

abstract class PlacesEventGetPlaces implements PlacesEvent {
  const factory PlacesEventGetPlaces(int page, String searchText) =
      _$PlacesEventGetPlaces;

  @override
  int get page;
  @override
  String get searchText;
  @override
  @JsonKey(ignore: true)
  $PlacesEventGetPlacesCopyWith<PlacesEventGetPlaces> get copyWith =>
      throw _privateConstructorUsedError;
}
