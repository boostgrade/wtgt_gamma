import 'package:json_annotation/json_annotation.dart';

part 'user_all_of.g.dart';

@JsonSerializable(checked: true)
class UserAllOf {
  final int id;
  final String name;
  final String lastName;
  final String phone;
  final DateTime birthDate;

  const UserAllOf({
    required this.id,
    required this.name,
    required this.lastName,
    required this.phone,
    required this.birthDate,
  });

  factory UserAllOf.fromJson(Map<String, dynamic> json) =>
      _$UserAllOfFromJson(json);
}
