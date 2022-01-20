import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_exception.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_mapper.dart';

class ErrorCodeInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response != null) {
      final exc = ServerErrorMapper.fromDioError(err);
      if (exc is UnauthorizedException) {
        // TODO(any): необходимо перезапросить токен
        debugPrint('token request needed');
      }
      throw exc;
    }
  }
}
