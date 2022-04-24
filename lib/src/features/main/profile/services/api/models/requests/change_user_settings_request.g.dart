// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_user_settings_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeUserSettingsRequest _$ChangeUserSettingsRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ChangeUserSettingsRequest',
      json,
      ($checkedConvert) {
        final val = ChangeUserSettingsRequest(
          pushEnabled: $checkedConvert('pushEnabled', (v) => v as bool?),
          vkEnabled: $checkedConvert('vkEnabled', (v) => v as bool?),
          fbEnabled: $checkedConvert('fbEnabled', (v) => v as bool?),
          googleEnabled: $checkedConvert('googleEnabled', (v) => v as bool?),
          instEnabled: $checkedConvert('instEnabled', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ChangeUserSettingsRequestToJson(
        ChangeUserSettingsRequest instance) =>
    <String, dynamic>{
      'pushEnabled': instance.pushEnabled,
      'vkEnabled': instance.vkEnabled,
      'fbEnabled': instance.fbEnabled,
      'googleEnabled': instance.googleEnabled,
      'instEnabled': instance.instEnabled,
    };
