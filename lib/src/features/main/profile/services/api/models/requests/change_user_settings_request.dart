import 'package:json_annotation/json_annotation.dart';

part 'change_user_settings_request.g.dart';

@JsonSerializable(checked: true)
class ChangeUserSettingsRequest {
  final bool? pushEnabled;
  final bool? vkEnabled;
  final bool? fbEnabled;
  final bool? googleEnabled;
  final bool? instEnabled;

  const ChangeUserSettingsRequest({
    this.pushEnabled,
    this.vkEnabled,
    this.fbEnabled,
    this.googleEnabled,
    this.instEnabled,
  });

  factory ChangeUserSettingsRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeUserSettingsRequestFromJson(json);
}
