import 'package:hive_flutter/hive_flutter.dart';

const String keyToken = 'auth_token';
const String tokenBox = 'tokenBox';

class TokenStorage {
  late final Box<String> _box;

  Future<void> init() async {
    await Hive.initFlutter();
    await openBox();
  }

  Future<void> openBox() async {
    _box = await Hive.openBox(tokenBox);
  }

  void storeToken(String token) {
    _box.put(keyToken, token);
  }

  String? getToken() {
    return _box.get(keyToken);
  }

  void clearToken() {
    _box.delete(keyToken);
  }
}
