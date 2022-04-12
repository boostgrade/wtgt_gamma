import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/models/change_profile_request.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/models/change_user_settings_request.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/models/user_profile.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/models/user_settings.dart';

part 'profile_api.g.dart';

@RestApi(baseUrl: 'https://stoplight.io/mocks/softech/wtgt/75539')
abstract class ProfileApi {
  factory ProfileApi(Dio dio, {String baseUrl}) = _ProfileApi;

  @GET('/user')
  Future<UserProfile> getUserProfile();

  @PUT('/user')
  Future<void> changeProfile(@Body() ChangeProfileRequest body);

  @GET('/user/settings')
  Future<UserSettings> getUserSettings();

  @PUT('/user/settings')
  Future<void> changeUserSettings(@Body() ChangeUserSettingsRequest body);
}
