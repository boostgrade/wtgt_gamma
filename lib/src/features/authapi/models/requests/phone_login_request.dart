import 'package:json_annotation/json_annotation.dart';

part 'phone_login_request.g.dart';

@JsonSerializable(createFactory: false)
class PhoneLoginRequest {
  final String phone;
  final String firebaseToken;

  const PhoneLoginRequest({
    required this.phone,
    required this.firebaseToken,
  });

  Map<String, dynamic> toJson() => _$PhoneLoginRequestToJson(this);
}
