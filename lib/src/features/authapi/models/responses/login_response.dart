import 'package:json_annotation/json_annotation.dart';
import 'package:where_to_go_today/src/features/authapi/models/login_object.dart';

import '../tokens.dart';
import '../user_dto.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final UserDTO user;
  final Tokens token;

  LoginResponse({
    required this.user,
    required this.token,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  LoginObject toDomain() => LoginObject(
        user: user.toDomain(),
        token: token,
      );
}
