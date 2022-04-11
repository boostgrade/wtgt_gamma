// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PlaceVm on _PlaceVm, Store {
  final _$placeAtom = Atom(name: '_PlaceVm.place');

  @override
  Place? get place {
    _$placeAtom.reportRead();
    return super.place;
  }

  @override
  set place(Place? value) {
    _$placeAtom.reportWrite(value, super.place, () {
      super.place = value;
    });
  }

  final _$loadingAtom = Atom(name: '_PlaceVm.loading');

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

  final _$_PlaceVmActionController = ActionController(name: '_PlaceVm');

  @override
  void getPlace(int placeId) {
    final _$actionInfo =
        _$_PlaceVmActionController.startAction(name: '_PlaceVm.getPlace');
    try {
      return super.getPlace(placeId);
    } finally {
      _$_PlaceVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
place: ${place},
loading: ${loading}
    ''';
  }
}
