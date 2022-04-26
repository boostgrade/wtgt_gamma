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
