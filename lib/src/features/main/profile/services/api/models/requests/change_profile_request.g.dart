// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeProfileRequest _$ChangeProfileRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ChangeProfileRequest',
      json,
      ($checkedConvert) {
        final val = ChangeProfileRequest(
          name: $checkedConvert('name', (v) => v as String),
          lastName: $checkedConvert('lastName', (v) => v as String),
          avatarUrl: $checkedConvert('avatarUrl', (v) => v as String?),
          phone: $checkedConvert('phone', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ChangeProfileRequestToJson(
        ChangeProfileRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lastName': instance.lastName,
      'avatarUrl': instance.avatarUrl,
      'phone': instance.phone,
    };
