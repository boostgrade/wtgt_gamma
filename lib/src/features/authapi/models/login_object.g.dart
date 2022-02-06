// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginObject _$LoginObjectFromJson(Map<String, dynamic> json) => LoginObject(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      token: Tokens.fromJson(json['token'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginObjectToJson(LoginObject instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
