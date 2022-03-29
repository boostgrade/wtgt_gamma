import 'package:hive_flutter/hive_flutter.dart';

class OnboardStorage {
  final Box<bool> _box;

  OnboardStorage(this._box);

  void storeValue(String key, bool value) => _box.put(key, value);

  bool? getValue(String key) => _box.get(key);
}
