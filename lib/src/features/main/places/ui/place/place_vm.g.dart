// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PlaceVm on _PlaceVm, Store {
  late final _$placeAtom = Atom(name: '_PlaceVm.place', context: context);

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

  late final _$loadingAtom = Atom(name: '_PlaceVm.loading', context: context);

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

  @override
  String toString() {
    return '''
place: ${place},
loading: ${loading}
    ''';
  }
}
