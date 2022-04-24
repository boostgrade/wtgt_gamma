import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/models/requests/change_profile_request.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/models/requests/change_user_settings_request.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/models/user_profile.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/models/user_settings.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/profile_api.dart';
import 'package:where_to_go_today/src/features/main/profile/services/repository/profile_repository.dart';

class MockProfileApi extends Mock implements ProfileApi {}

class ChangeProfileRequestFake extends Fake implements ChangeProfileRequest {}

class ChangeUserSettingsRequestFake extends Fake
    implements ChangeUserSettingsRequest {}

void main() {
  setUpAll(() {
    registerFallbackValue(ChangeProfileRequestFake());
    registerFallbackValue(ChangeUserSettingsRequestFake());
  });

  group('Тестирование запросов ProfileRepository', () {
    late ProfileRepository profileRepository;
    late MockProfileApi mockProfileApi;

    setUp(() {
      mockProfileApi = MockProfileApi();
      profileRepository = ProfileRepository(mockProfileApi);
    });
    test('Получение профиля пользователя', () async {
      when(mockProfileApi.getUserProfile).thenAnswer(
        (_) async => UserProfile.fromJson(userProfileJson),
      );

      final result = await profileRepository.getUserProfile();

      final expectResult = UserProfile.fromJson(userProfileJson);

      expect(result.id, expectResult.id);
      expect(result.name, expectResult.name);
      expect(result.lastName, expectResult.lastName);
      expect(result.phone, expectResult.phone);
      expect(result.avatarUrl, expectResult.avatarUrl);
      expect(result.allOf.id, expectResult.allOf.id);
      expect(result.allOf.name, expectResult.allOf.name);
      expect(result.allOf.lastName, expectResult.allOf.lastName);
      expect(result.allOf.birthDate, expectResult.allOf.birthDate);
      expect(result.allOf.phone, expectResult.allOf.phone);
      expect(result.birthDate, expectResult.birthDate);
      expect(result.settings.pushEnabled, expectResult.settings.pushEnabled);
      expect(result.settings.vkEnabled, expectResult.settings.vkEnabled);
      expect(result.settings.fbEnabled, expectResult.settings.fbEnabled);
      expect(result.settings.instEnabled, expectResult.settings.instEnabled);
      expect(
        result.settings.googleEnabled,
        expectResult.settings.googleEnabled,
      );
    });

    test('Изменение профиля пользователя', () async {
      when(() => mockProfileApi.changeProfile(any())).thenAnswer(
        (_) => Future.value(),
      );

      await profileRepository.changeProfile(
        name: 'Dmitry',
        lastName: 'Dudunov',
        phone: '1231231231231',
        avatarUrl: 'avatarUrl',
      );

      verify(
        () => mockProfileApi.changeProfile(
          any(),
        ),
      ).called(1);
    });

    test('Получение настроек пользователя', () async {
      when(mockProfileApi.getUserSettings).thenAnswer(
        (_) async => UserSettings.fromJson(userSettingsJson),
      );

      final result = await profileRepository.getUserSettings();

      final expectResult = UserSettings.fromJson(userSettingsJson);

      expect(result.pushEnabled, expectResult.pushEnabled);
      expect(result.vkEnabled, expectResult.vkEnabled);
      expect(result.fbEnabled, expectResult.fbEnabled);
      expect(result.instEnabled, expectResult.instEnabled);
      expect(result.googleEnabled, expectResult.googleEnabled);
    });

    test('Изменение настроек пользователя', () async {
      when(() => mockProfileApi.changeUserSettings(any())).thenAnswer(
        (_) => Future.value(),
      );

      await profileRepository.changeUserSettings(
        fbEnabled: true,
        googleEnabled: true,
        instEnabled: true,
        pushEnabled: true,
        vkEnabled: true,
      );

      verify(
        () => mockProfileApi.changeUserSettings(
          any(),
        ),
      ).called(1);
    });
  });
}

const userProfileJson = {
  'allOf': {
    'id': 10201,
    'name': 'Artem',
    'lastName': 'Ivanov',
    'phone': '7911223344',
    'birthDate': '1990-10-22T11:58:47Z'
  },
  'id': 10201,
  'name': 'Artem',
  'lastName': 'Ivanov',
  'avatarUrl': 'string',
  'phone': '7911223344',
  'settings': {
    'pushEnabled': false,
    'vkEnabled': false,
    'fbEnabled': false,
    'googleEnabled': false,
    'instEnabled': false
  },
  'birthDate': '2020-10-22T11:58:47Z'
};

const userSettingsJson = {
  'pushEnabled': false,
  'vkEnabled': false,
  'fbEnabled': false,
  'googleEnabled': false,
  'instEnabled': false
};
