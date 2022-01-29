import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:where_to_go_today/src/features/auth/services/storage/token_storage.dart';

void main() {
  const token = '12345';
  final tokenStorage = TokenStorage();

  group('Тесты хранилища токена авторизации', () {
    setUpAll(() async {
      final path = Directory.current.path;
      Hive.init('$path/test/storage');
      await tokenStorage.openBox('testBox');
    });

    test('Cохранение токена', () {
      tokenStorage.storeToken(token);
      expect(tokenStorage.getToken(), token);
    });

    test('Удаление токена', () {
      tokenStorage
        ..storeToken(token)
        ..clearToken();
      expect(tokenStorage.getToken(), null);
    });

    tearDownAll(() async {
      await Hive.deleteFromDisk();
    });
  });
}
