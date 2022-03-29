import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:where_to_go_today/src/features/onboard/services/storage/onboard_storage.dart';

void main() {
  late final OnboardStorage onboardStorage;
  const completedKey = 'completed';

  group('Тесты хранилища Onboarding', () {
    setUpAll(() async {
      final path = Directory.current.path;
      Hive.init('$path/test/onboard/storage');
      onboardStorage = OnboardStorage(await Hive.openBox('onboard'));
    });

    test('Получение флага при первом входе', () {
      expect(onboardStorage.getValue(completedKey), null);
    });

    test('Cохранение флага', () {
      onboardStorage.storeValue(completedKey, false);
      expect(onboardStorage.getValue(completedKey), false);
    });

    test('Получение флага при не первом входе', () {
      expect(onboardStorage.getValue(completedKey), false);
    });

    tearDownAll(() async {
      await Hive.deleteFromDisk();
    });
  });
}
