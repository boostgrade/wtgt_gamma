// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Metadata _$MetadataFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Metadata',
      json,
      ($checkedConvert) {
        final val = Metadata(
          limit: $checkedConvert('limit', (v) => v as int),
          offset: $checkedConvert('offset', (v) => v as int),
          fullCount: $checkedConvert('fullCount', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'fullCount': instance.fullCount,
    };
