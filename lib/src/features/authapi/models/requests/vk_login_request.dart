import 'package:json_annotation/json_annotation.dart';

part 'vk_login_request.g.dart';

@JsonSerializable(createFactory: false)
class VkLoginRequest {
  final String token;

  const VkLoginRequest({
    required this.token,
  });

  Map<String, dynamic> toJson() => _$VkLoginRequestToJson(this);
}
