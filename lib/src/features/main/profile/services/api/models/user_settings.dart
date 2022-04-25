import 'package:json_annotation/json_annotation.dart';

part 'user_settings.g.dart';

@JsonSerializable(checked: true)
class UserSettings {
  final bool pushEnabled;
  final bool vkEnabled;
  final bool fbEnabled;
  final bool googleEnabled;
  final bool instEnabled;

  const UserSettings({
    required this.pushEnabled,
    required this.vkEnabled,
    required this.fbEnabled,
    required this.googleEnabled,
    required this.instEnabled,
  });

  factory UserSettings.fromJson(Map<String, dynamic> json) =>
      _$UserSettingsFromJson(json);
}
