// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => $checkedCreate(
      'UserProfile',
      json,
      ($checkedConvert) {
        final val = UserProfile(
          allOf: $checkedConvert(
              'allOf', (v) => UserAllOf.fromJson(v as Map<String, dynamic>)),
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
          lastName: $checkedConvert('lastName', (v) => v as String),
          avatarUrl: $checkedConvert('avatarUrl', (v) => v as String),
          phone: $checkedConvert('phone', (v) => v as String),
          settings: $checkedConvert('settings',
              (v) => UserSettings.fromJson(v as Map<String, dynamic>)),
          birthDate:
              $checkedConvert('birthDate', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      'allOf': instance.allOf,
      'id': instance.id,
      'name': instance.name,
      'lastName': instance.lastName,
      'avatarUrl': instance.avatarUrl,
      'phone': instance.phone,
      'settings': instance.settings,
      'birthDate': instance.birthDate.toIso8601String(),
    };
