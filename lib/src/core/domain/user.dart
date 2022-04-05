import 'package:where_to_go_today/src/core/domain/place.dart';

/// Модель пользователя
class User {
  final int id;
  final String name;
  final String lastName;
  final String phone;
  final String email;
  final String birthDate;
  final String photoUrl;
  final List<Place> favoritePlaces;

  User({
    required this.id,
    required this.name,
    required this.lastName,
    required this.phone,
    required this.email,
    required this.birthDate,
    this.photoUrl = '',
    this.favoritePlaces = const [],
  });
}
