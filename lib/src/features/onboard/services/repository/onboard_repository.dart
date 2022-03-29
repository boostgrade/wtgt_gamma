import 'package:where_to_go_today/src/features/onboard/services/storage/onboard_storage.dart';

class OnboardRepository {
  final _completedKey = 'completed';
  final OnboardStorage _onboardStorage;

  OnboardRepository(this._onboardStorage) {
    final isCompleted = getCompleted();

    if (isCompleted == null) {
      setCompleted(false);
    }
  }

  bool? getCompleted() => _onboardStorage.getValue(_completedKey);

  void setCompleted(bool completed) =>
      _onboardStorage.storeValue(_completedKey, completed);
}
