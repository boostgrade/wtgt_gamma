import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:where_to_go_today/src/features/auth/services/storage/onboarding_storage.dart';

void main() {
  const isCompleted = false;
  final onboardingStorage = OnboardingStorage();

  group('Тесты хранилища пройденного онбоардинга', () {
    setUpAll(() async {
      final path = Directory.current.path;

      Hive.init('$path/test/storage');

      await onboardingStorage.openBox('onboardingBox');
    });

    test('Сохранение результата прохождения онбоардинга', () {
      onboardingStorage.storeResult(isCompleted);
      expect(onboardingStorage.getResult(), isCompleted);
    });

    test('Удаление результата прохождения онбоардинга', () {
      onboardingStorage
        ..storeResult(isCompleted)
        ..clearResult();
      expect(onboardingStorage.getResult(), null);
    });

    tearDownAll(() async {
      await Hive.deleteFromDisk();
    });
  });
}
