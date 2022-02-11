// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginResponse',
      json,
      ($checkedConvert) {
        final val = LoginResponse(
          user: $checkedConvert(
              'user', (v) => UserDTO.fromJson(v as Map<String, dynamic>)),
          token: $checkedConvert(
              'token', (v) => Tokens.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
