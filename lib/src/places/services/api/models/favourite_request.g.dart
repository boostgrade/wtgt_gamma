// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavouriteRequest _$FavouriteRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'FavouriteRequest',
      json,
      ($checkedConvert) {
        final val = FavouriteRequest(
          favourite: $checkedConvert('favourite', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$FavouriteRequestToJson(FavouriteRequest instance) =>
    <String, dynamic>{
      'favourite': instance.favourite,
    };
