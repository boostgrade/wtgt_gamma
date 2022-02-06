import 'package:json_annotation/json_annotation.dart';

part 'phone_login_request.g.dart';

@JsonSerializable()
class PhoneLoginRequest {
  final String phone;
  final String firebaseToken;

  PhoneLoginRequest({
    required this.phone,
    required this.firebaseToken,
  });

  factory PhoneLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$PhoneLoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PhoneLoginRequestToJson(this);
}
