import 'package:json_annotation/json_annotation.dart';
import 'package:where_to_go_today/src/features/authapi/models/tokens.dart';

import 'user.dart';

part 'login_object.g.dart';

@JsonSerializable(checked: true)
class LoginObject {
  final User user;
  final Tokens token;

  const LoginObject({
    required this.user,
    required this.token,
  });

  factory LoginObject.fromJson(Map<String, dynamic> json) =>
      _$LoginObjectFromJson(json);
}
