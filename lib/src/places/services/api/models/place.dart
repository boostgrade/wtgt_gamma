import 'package:json_annotation/json_annotation.dart';

import 'sale.dart';

part 'place.g.dart';

@JsonSerializable(checked: true, createToJson: false)
class Place {
  final int id;
  final String name;
  final String description;
  final bool isFavourite;
  final String imageUrl;
  final PlaceType type;
  final String shareLink;
  final List<Sale> sales;

  const Place({
    required this.id,
    required this.name,
    required this.description,
    required this.isFavourite,
    required this.imageUrl,
    required this.type,
    required this.shareLink,
    required this.sales,
  });

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}

@JsonEnum()
enum PlaceType {
  bar,
  cafe,
  burger,
  restoraunt,
  beer,
}
