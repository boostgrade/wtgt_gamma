import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

const String _onboardingBox = 'onboardingBox';
const String _isCompletedOnboarding = 'is_onboarding_completed';

class OnboardingStorage {
  late final Box<bool> _box;

  Future<void> init() async {
    await Hive.initFlutter();

    return openBox(_onboardingBox);
  }

  @visibleForTesting
  Future<void> openBox(String boxName) async {
    _box = await Hive.openBox(boxName);
  }

  void storeResult(bool isCompleted) {
    _box.put(_isCompletedOnboarding, isCompleted);
  }

  bool? getResult() {
    return _box.get(_isCompletedOnboarding);
  }

  void clearResult() {
    _box.delete(_isCompletedOnboarding);
  }
}
