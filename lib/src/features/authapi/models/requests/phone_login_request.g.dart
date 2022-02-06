// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhoneLoginRequest _$PhoneLoginRequestFromJson(Map<String, dynamic> json) =>
    PhoneLoginRequest(
      phone: json['phone'] as String,
      firebaseToken: json['firebaseToken'] as String,
    );

Map<String, dynamic> _$PhoneLoginRequestToJson(PhoneLoginRequest instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'firebaseToken': instance.firebaseToken,
    };
