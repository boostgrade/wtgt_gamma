///Модель заведения
class Place {
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final int? distance;

  Place({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    this.distance,
  });
}
