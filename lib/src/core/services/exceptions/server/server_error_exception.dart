/// Для преобразования ошибок сервера в ошибки приложенния,
/// необходимо создать соответсвующие классы,
/// расширяющие класс [Exception]
/// с названиями, соответсвующими конкретной ошибке.

/// Серверная ошибка по-умолчанию
class ServerErrorException implements Exception {}

/// Ошибка 404
class NotFoundException implements Exception {}

/// Ошибка 400 с кодом code == 101
class ImageSoLargeException implements Exception {}

/// Ошибка при протухшем токене
class UnauthorizedException implements Exception {}
