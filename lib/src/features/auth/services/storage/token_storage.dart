import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

const String _keyToken = 'auth_token';
const String _tokenBox = 'tokenBox';

class TokenStorage {
  late final Box<String> _box;

  Future<void> init() async {
    return openBox(_tokenBox);
  }

  @visibleForTesting
  Future<void> openBox(String boxName) async {
    _box = await Hive.openBox(boxName);
  }

  void storeToken(String token) {
    _box.put(_keyToken, token);
  }

  String? getToken() {
    return _box.get(_keyToken);
  }

  void clearToken() {
    _box.delete(_keyToken);
  }
}
