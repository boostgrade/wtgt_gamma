// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sale _$SaleFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Sale',
      json,
      ($checkedConvert) {
        final val = Sale(
          imageUrl: $checkedConvert('imageUrl', (v) => v as String),
          text: $checkedConvert('text', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$SaleToJson(Sale instance) => <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'text': instance.text,
    };
