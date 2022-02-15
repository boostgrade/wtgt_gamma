// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokens.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tokens _$TokensFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Tokens',
      json,
      ($checkedConvert) {
        final val = Tokens(
          token: $checkedConvert('token', (v) => v as String),
          refreshToken: $checkedConvert('refreshToken', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$TokensToJson(Tokens instance) => <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };
