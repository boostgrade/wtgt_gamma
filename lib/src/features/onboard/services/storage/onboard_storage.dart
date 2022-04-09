import 'package:hive_flutter/hive_flutter.dart';

const _boxName = 'onboard';

class OnboardStorage {
  late final Box<bool> _box;

  Future<void> init() async {
    await Hive.initFlutter();

    return openBox(_boxName);
  }

  Future<void> openBox(String name) async {
    _box = await Hive.openBox<bool>(name);
  }

  void storeValue(String key, bool value) => _box.put(key, value);

  bool? getValue(String key) => _box.get(key);
}
