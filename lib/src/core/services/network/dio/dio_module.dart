import 'package:dio/dio.dart';
import 'package:where_to_go_today/src/core/services/network/dio/error_code_interceptor.dart';
import 'package:where_to_go_today/src/core/services/urls.dart';

/// Класс-модуль для конфигурации dio
class DioModule {
  final dio = Dio()
    ..options = BaseOptions(
      baseUrl: baseUrl,
    )
    ..interceptors.addAll(
      [
        LogInterceptor(),
        ErrorCodeInterceptor(),
      ],
    );
}
