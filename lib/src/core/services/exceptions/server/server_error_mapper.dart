import 'package:dio/dio.dart';

import 'server_error_exception.dart';

/// Сущность, которая преобразует ошибки сервера в ошибки приложенния
/// для дальнейшей обработки.
class ServerErrorMapper {
  /// Для обработки остальных серверных ошибок
  /// необходимо задать новые целочисленные константы, соотвтетсвующие кодам.
  static const int _notFound = 404;

  static Exception fromDioError(DioError error) {
    final statusCode = error.response?.statusCode;

    /// Для обработки остальных серверных ошибок
    /// нужно написать дополнительные блоки в условном выражении,
    /// предварительно создав классы исключений.
    if (statusCode == _notFound) {
      return NotFoundException();
    }

    /// Возвращается по-умолчанию для остальных ошибок
    return ServerErrorException();
  }
}
