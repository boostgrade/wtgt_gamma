import 'package:json_annotation/json_annotation.dart';

part 'meta_login_request.g.dart';

@JsonSerializable()
class MetaLoginRequest {
  final String token;

  MetaLoginRequest({
    required this.token,
  });

  factory MetaLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$MetaLoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MetaLoginRequestToJson(this);
}
