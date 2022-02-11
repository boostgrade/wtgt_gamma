import 'package:json_annotation/json_annotation.dart';

part 'meta_login_request.g.dart';

@JsonSerializable(createFactory: false)
class MetaLoginRequest {
  final String token;

  const MetaLoginRequest({
    required this.token,
  });

  Map<String, dynamic> toJson() => _$MetaLoginRequestToJson(this);
}
