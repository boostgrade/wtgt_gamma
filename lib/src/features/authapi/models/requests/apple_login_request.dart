import 'package:json_annotation/json_annotation.dart';

part 'apple_login_request.g.dart';

@JsonSerializable()
class AppleLoginRequest {
  final String token;

  AppleLoginRequest({
    required this.token,
  });

  factory AppleLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$AppleLoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AppleLoginRequestToJson(this);
}
