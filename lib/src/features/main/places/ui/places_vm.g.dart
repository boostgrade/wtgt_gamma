// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PlacesVm on _PlacesVm, Store {
  late final _$placesAtom = Atom(name: '_PlacesVm.places', context: context);

  @override
  List<Place> get places {
    _$placesAtom.reportRead();
    return super.places;
  }

  @override
  set places(List<Place> value) {
    _$placesAtom.reportWrite(value, super.places, () {
      super.places = value;
    });
  }

  late final _$loadingAtom = Atom(name: '_PlacesVm.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$_PlacesVmActionController =
      ActionController(name: '_PlacesVm', context: context);

  @override
  void nextPage() {
    final _$actionInfo =
        _$_PlacesVmActionController.startAction(name: '_PlacesVm.nextPage');
    try {
      return super.nextPage();
    } finally {
      _$_PlacesVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
places: ${places},
loading: ${loading}
    ''';
  }
}
