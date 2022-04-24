// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSettings _$UserSettingsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserSettings',
      json,
      ($checkedConvert) {
        final val = UserSettings(
          pushEnabled: $checkedConvert('pushEnabled', (v) => v as bool),
          vkEnabled: $checkedConvert('vkEnabled', (v) => v as bool),
          fbEnabled: $checkedConvert('fbEnabled', (v) => v as bool),
          googleEnabled: $checkedConvert('googleEnabled', (v) => v as bool),
          instEnabled: $checkedConvert('instEnabled', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserSettingsToJson(UserSettings instance) =>
    <String, dynamic>{
      'pushEnabled': instance.pushEnabled,
      'vkEnabled': instance.vkEnabled,
      'fbEnabled': instance.fbEnabled,
      'googleEnabled': instance.googleEnabled,
      'instEnabled': instance.instEnabled,
    };
