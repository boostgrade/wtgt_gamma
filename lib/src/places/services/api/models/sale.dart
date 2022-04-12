import 'package:json_annotation/json_annotation.dart';

part 'sale.g.dart';

@JsonSerializable(checked: true, createToJson: false)
class Sale {
  final String imageUrl;
  final String text;

  const Sale({
    required this.imageUrl,
    required this.text,
  });

  factory Sale.fromJson(Map<String, dynamic> json) => _$SaleFromJson(json);
}
