// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginObject _$LoginObjectFromJson(Map<String, dynamic> json) => $checkedCreate(
      'LoginObject',
      json,
      ($checkedConvert) {
        final val = LoginObject(
          user: $checkedConvert(
              'user', (v) => User.fromJson(v as Map<String, dynamic>)),
          token: $checkedConvert(
              'token', (v) => Tokens.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$LoginObjectToJson(LoginObject instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
