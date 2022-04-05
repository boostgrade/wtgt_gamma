import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:where_to_go_today/src/features/onboard/services/repository/onboard_repository.dart';
import 'package:where_to_go_today/src/features/onboard/services/storage/onboard_storage.dart';

class MockOnboardStorage extends Mock implements OnboardStorage {}

void main() {
  group('Тесты для репозитория onboarding', () {
    late MockOnboardStorage mockOnboardStorage;
    late OnboardRepository onboardRepository;

    setUp(() {
      mockOnboardStorage = MockOnboardStorage();
      onboardRepository = OnboardRepository(mockOnboardStorage);
    });

    test('Метод получения флага completed при первом запуске', () {
      when(() => mockOnboardStorage.getValue(any())).thenReturn(false);
      final result = onboardRepository.getCompleted();

      expect(result, false);
    });

    test('Метод установки флага completed', () {
      when(() => mockOnboardStorage.storeValue(any(), any())).thenReturn(null);

      onboardRepository.setCompleted(true);
      verify(() => mockOnboardStorage.storeValue(any(), any())).called(1);

      when(() => mockOnboardStorage.getValue(any())).thenReturn(true);

      final result = onboardRepository.getCompleted();

      expect(result, true);
    });
  });
}
