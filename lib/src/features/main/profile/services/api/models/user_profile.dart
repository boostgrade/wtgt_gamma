import 'package:json_annotation/json_annotation.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/models/user_all_of.dart';
import 'package:where_to_go_today/src/features/main/profile/services/api/models/user_settings.dart';

part 'user_profile.g.dart';

@JsonSerializable(checked: true)
class UserProfile {
  final UserAllOf allOf;
  final int id;
  final String name;
  final String lastName;
  final String avatarUrl;
  final String phone;
  final UserSettings settings;
  final DateTime birthDate;

  const UserProfile({
    required this.allOf,
    required this.id,
    required this.name,
    required this.lastName,
    required this.avatarUrl,
    required this.phone,
    required this.settings,
    required this.birthDate,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
