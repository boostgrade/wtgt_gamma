// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_all_of.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAllOf _$UserAllOfFromJson(Map<String, dynamic> json) => $checkedCreate(
      'UserAllOf',
      json,
      ($checkedConvert) {
        final val = UserAllOf(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
          lastName: $checkedConvert('lastName', (v) => v as String),
          phone: $checkedConvert('phone', (v) => v as String),
          birthDate:
              $checkedConvert('birthDate', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserAllOfToJson(UserAllOf instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'birthDate': instance.birthDate.toIso8601String(),
    };
