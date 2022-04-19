import 'package:json_annotation/json_annotation.dart';

import 'metadata.dart';
import 'place.dart';

part 'place_list_response.g.dart';

@JsonSerializable(checked: true, createToJson: false)
class PlaceListResponse {
  final List<Place> data;
  final Metadata metadata;

  const PlaceListResponse({
    required this.data,
    required this.metadata,
  });

  factory PlaceListResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceListResponseFromJson(json);
}
