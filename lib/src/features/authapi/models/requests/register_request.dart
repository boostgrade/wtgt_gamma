import 'package:json_annotation/json_annotation.dart';

part 'register_request.g.dart';

@JsonSerializable(createFactory: false)
class RegisterRequest {
  final String name;
  final String lastName;
  final String phone;
  final String birthDate;

  const RegisterRequest({
    required this.name,
    required this.lastName,
    required this.phone,
    required this.birthDate,
  });

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}
