import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String name;
  final String lastName;
  final String phone;
  final DateTime birthDate;

  User({
    required this.id,
    required this.name,
    required this.lastName,
    required this.phone,
    required this.birthDate,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
