import 'package:json_annotation/json_annotation.dart';

part 'change_profile_request.g.dart';

@JsonSerializable(checked: true)
class ChangeProfileRequest {
  final String name;
  final String lastName;
  final String? avatarUrl;
  final String? phone;

  const ChangeProfileRequest({
    required this.name,
    required this.lastName,
    this.avatarUrl,
    this.phone,
  });

  factory ChangeProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeProfileRequestFromJson(json);
}
