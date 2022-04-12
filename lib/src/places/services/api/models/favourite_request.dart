import 'package:json_annotation/json_annotation.dart';

part 'favourite_request.g.dart';

@JsonSerializable(checked: true)
class FavouriteRequest {
  final bool favourite;

  const FavouriteRequest({required this.favourite});

  factory FavouriteRequest.fromJson(Map<String, dynamic> json) =>
      _$FavouriteRequestFromJson(json);
}
