// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRole _$UserRoleFromJson(Map<String, dynamic> json) => $checkedCreate(
      'UserRole',
      json,
      ($checkedConvert) {
        final val = UserRole(
          id: $checkedConvert('id', (v) => v as int),
          role: $checkedConvert('role', (v) => v as String),
          features: $checkedConvert('features', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserRoleToJson(UserRole instance) => <String, dynamic>{
      'id': instance.id,
      'role': instance.role,
      'features': instance.features,
    };
