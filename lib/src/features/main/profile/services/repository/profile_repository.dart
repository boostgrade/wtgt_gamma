import 'package:where_to_go_today/src/features/main/profile/services/api/models/requests/change_profile_request.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/models/requests/change_user_settings_request.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/models/user_profile.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/models/user_settings.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/profile_api.dart';

class ProfileRepository {
  final ProfileApi _profileApi;

  ProfileRepository(this._profileApi);

  Future<UserProfile> getUserProfile() => _profileApi.getUserProfile();

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
