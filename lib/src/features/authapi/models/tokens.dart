import 'package:json_annotation/json_annotation.dart';

part 'tokens.g.dart';

@JsonSerializable()
class Tokens {
  final String token;
  final String refreshToken;

  Tokens({
    required this.token,
    required this.refreshToken,
  });

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);
}
