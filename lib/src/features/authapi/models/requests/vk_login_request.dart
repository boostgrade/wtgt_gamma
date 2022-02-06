import 'package:json_annotation/json_annotation.dart';

part 'vk_login_request.g.dart';

@JsonSerializable()
class VkLoginRequest {
  final String token;

  VkLoginRequest({
    required this.token,
  });

  factory VkLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$VkLoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$VkLoginRequestToJson(this);
}
