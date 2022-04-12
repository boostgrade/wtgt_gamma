// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceListResponse _$PlaceListResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PlaceListResponse',
      json,
      ($checkedConvert) {
        final val = PlaceListResponse(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>)
                  .map((e) => Place.fromJson(e as Map<String, dynamic>))
                  .toList()),
          metadata: $checkedConvert(
              'metadata', (v) => Metadata.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$PlaceListResponseToJson(PlaceListResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'metadata': instance.metadata,
    };
