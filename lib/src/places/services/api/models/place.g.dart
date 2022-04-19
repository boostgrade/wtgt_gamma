// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Place _$PlaceFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Place',
      json,
      ($checkedConvert) {
        final val = Place(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          isFavourite: $checkedConvert('isFavourite', (v) => v as bool),
          imageUrl: $checkedConvert('imageUrl', (v) => v as String),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$PlaceTypeEnumMap, v)),
          shareLink: $checkedConvert('shareLink', (v) => v as String),
          sales: $checkedConvert(
              'sales',
              (v) => (v as List<dynamic>)
                  .map((e) => Sale.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$PlaceToJson(Place instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'isFavourite': instance.isFavourite,
      'imageUrl': instance.imageUrl,
      'type': _$PlaceTypeEnumMap[instance.type],
      'shareLink': instance.shareLink,
      'sales': instance.sales,
    };

const _$PlaceTypeEnumMap = {
  PlaceType.bar: 'bar',
  PlaceType.cafe: 'cafe',
  PlaceType.burger: 'burger',
  PlaceType.restoraunt: 'restoraunt',
  PlaceType.beer: 'beer',
};
