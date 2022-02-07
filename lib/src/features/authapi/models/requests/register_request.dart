import 'package:json_annotation/json_annotation.dart';

part 'register_request.g.dart';

@JsonSerializable()
class RegisterRequest {
  final String name;
  final String lastName;
  final String phone;
  final String birthDate;

  RegisterRequest({
    required this.name,
    required this.lastName,
    required this.phone,
    required this.birthDate,
  });

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}
