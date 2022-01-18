/// Модель пользователя
class User {
  final int id;
  final String name;
  final String lastName;
  final String phone;
  final String email;
  final String birthDate;
  final String photoUrl;

  User({
    required this.id,
    required this.name,
    required this.lastName,
    required this.phone,
    required this.email,
    required this.birthDate,
    this.photoUrl = '',
  });
}
