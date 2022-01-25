import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_exception.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_mapper.dart';

class ErrorCodeInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final exc = ServerErrorMapper.fromDioError(err);
    if (exc is UnauthorizedException) {
      // TODO(any): необходимо перезапросить токен
      debugPrint('token request needed');
      throw exc;
    } else if (exc is ImageSoLargeException) {
      throw exc;
    } else {
      handler.next(err);
    }
  }
}
