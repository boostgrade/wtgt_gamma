import 'package:where_to_go_today/src/core/domain/place.dart';
import 'package:where_to_go_today/src/core/domain/user.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/models/requests/change_profile_request.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/models/requests/change_user_settings_request.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/models/user_profile.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/models/user_settings.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/profile_api.dart';

class ProfileRepository {
  final ProfileApi _profileApi;

  ProfileRepository(this._profileApi);

  Future<UserProfile> getUserProfile() => _profileApi.getUserProfile();

  Future<User> getStubProfile() async {
    await Future<void>.delayed(const Duration(seconds: 1));

    return _stubUser;
  }

  Future<void> changeProfile({
    required String name,
    required String lastName,
    String? avatarUrl,
    String? phone,
  }) =>
      _profileApi.changeProfile(
        ChangeProfileRequest(
          name: name,
          lastName: lastName,
          avatarUrl: avatarUrl,
          phone: phone,
        ),
      );

  Future<UserSettings> getUserSettings() => _profileApi.getUserSettings();

  Future<void> changeUserSettings({
    bool? pushEnabled,
    bool? vkEnabled,
    bool? fbEnabled,
    bool? googleEnabled,
    bool? instEnabled,
  }) =>
      _profileApi.changeUserSettings(
        ChangeUserSettingsRequest(
          fbEnabled: fbEnabled,
          googleEnabled: googleEnabled,
          instEnabled: instEnabled,
          pushEnabled: pushEnabled,
          vkEnabled: vkEnabled,
        ),
      );
}

var _stubUser = User(
  id: 1,
  name: 'Мирон',
  lastName: 'Бункеров',
  birthDate: '',
  email: '',
  phone: '',
  photoUrl:
      'https://s3-alpha-sig.figma.com/img/2fb3/141e/57d3910fcca978d11b1ea71e2e0802b1?Expires=1650844800&Signature=DT~7XwXW511lK4hENsC3L-ukVRjY83Roe9C4X-MkGVnjmN4OEeKUACX3MNEOOqqb~qcyrjttSQmfljEgiHRkOmRL4VAmK5Cqzs6sDKZ5T7zgVEh6O4ssJ7y0G4M9K4T-o-azqaJcPBE6JEFP5MBtlvvVoXSNHFVdy9Zthos4SNomU7Oem841ZUTaYCgvgQFJrlGOl2K5lo-3uBJu8-DSQs0KdQk54ZbxzQFdiIkaWNOFpdYY3ivioOxdjsaxO9SPFhsH9ySeNBiVwIqNQPLpRhbweIGVHUORnr-5zYA3BJB7ELdZoqcUiC9XQap6it9Bjij~zJoLC~uh6rbfGF6YJw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  favoritePlaces: List<Place>.generate(
    7,
    (index) => Place(
      id: index + 1,
      name: 'Название Кафе',
      description: 'Описание',
      imageUrl:
          'https://s3-alpha-sig.figma.com/img/a8df/2b8e/8b3ec5c81b489cac54a930c453372cd7?Expires=1651449600&Signature=gddqdDgHJYXouh8DYKJQ~SFmptQHpDN5GKMkse-n6bX309fbukNaqSOpyHYYcxowmn-Vffct5B9f~e4RuQkJTF4sQy4y93G-EVMTxOYeI0nPyN1EM9eeA~nvbsOhtoLn-3jfed-Q1Zn~uApdufgiTIwfj-jrCzSYLCW9E6tZKxFaKUDoQvTPxoGD7t2cy-M-kft3IA4f7Y5FyvKrW4EKPWB--tgZrv4-8uQJoJoetxHce4Zob~ovoT3Z4PJA-XwiXREqtcMjDikfOQ1d2ldhIHfVWGQtCW0zPWySkSf5DFCxeZJTYlFMCMhOsyvHcOuiyRD85C8Jd2ZO8NOtNLBwDg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
      latitude: null,
      longitude: null,
    ),
  ),
);
