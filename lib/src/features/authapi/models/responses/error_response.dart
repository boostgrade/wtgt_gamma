import 'package:json_annotation/json_annotation.dart';

part 'error_response.g.dart';

@JsonSerializable(checked: true, createToJson: false)
class ErrorResponse {
  final int code;
  final String message;

  const ErrorResponse({
    required this.code,
    required this.message,
  });

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}
