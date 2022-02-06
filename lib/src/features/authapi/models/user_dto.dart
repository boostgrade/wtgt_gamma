import 'package:json_annotation/json_annotation.dart';
import 'package:where_to_go_today/src/features/authapi/models/user.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDTO {
  final int id;
  final String name;
  final String lastName;
  final String phone;
  final String birthDate;

  UserDTO({
    required this.id,
    required this.name,
    required this.lastName,
    required this.phone,
    required this.birthDate,
  });

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  User toDomain() => User(
        id: id,
        name: name,
        lastName: lastName,
        phone: phone,
        birthDate: DateTime.parse(birthDate),
      );
}
