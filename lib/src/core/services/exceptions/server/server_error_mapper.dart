import 'dart:convert';

import 'package:dio/dio.dart';

import 'server_error_exception.dart';

/// Сущность, которая преобразует ошибки сервера в ошибки приложенния
/// для дальнейшей обработки.
class ServerErrorMapper {
  /// Для обработки остальных серверных ошибок
  /// необходимо задать новые целочисленные константы, соотвтетсвующие кодам.
  static const int _notFound = 404;
  static const int _unauthorized = 401;
  static const int _badRequest = 400;

  static Exception fromDioError(DioError error) {
    final statusCode = error.response?.statusCode;

    /// Для обработки остальных серверных ошибок
    /// нужно написать дополнительные блоки в условном выражении,
    /// предварительно создав классы исключений.
    switch (statusCode) {
      case _notFound:
        return NotFoundException();
      case _unauthorized:
        return UnauthorizedException();
      case _badRequest:
        if (error.response?.toString() ==
            jsonEncode({
              'code': 101,
            })) {
          return ImageSoLargeException();
        }
        break;
    }

    /// Возвращается по-умолчанию для остальных ошибок
    return ServerErrorException();
  }
}
