import 'package:json_annotation/json_annotation.dart';

part 'metadata.g.dart';

@JsonSerializable(checked: true, createToJson: false)
class Metadata {
  final int limit;
  final int offset;
  final int fullCount;

  const Metadata({
    required this.limit,
    required this.offset,
    required this.fullCount,
  });

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}
