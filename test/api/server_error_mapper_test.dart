import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_exception.dart';
import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_mapper.dart';

void main() {
  group(
    'Тесты для преорбазования ошибок',
    () {
      final requestOptions = RequestOptions(path: '');

      DioError _makeDioError(
        int statusCode, {
        Object? data,
      }) {
        return DioError(
          requestOptions: requestOptions,
          response: Response<Object?>(
            statusCode: statusCode,
            requestOptions: requestOptions,
            data: data,
          ),
        );
      }

      test(
        'Если пришла 401, вернуть UnauthorizedException',
        () {
          final error = _makeDioError(401);

          final exc = ServerErrorMapper.fromDioError(error);

          expect(exc.runtimeType, UnauthorizedException);
        },
      );

      test(
        'Если пришла 400, провести парсинг тела. Если код внутри == 101, вернуть ImageIsSoLargeException',
        () {
          final error = _makeDioError(
            400,
            data: {
              'code': 101,
            },
          );

          final exc = ServerErrorMapper.fromDioError(error);

          expect(exc.runtimeType, ImageSoLargeException);
        },
      );

      test(
        'Если пришла 404, вернуть NotFoundException',
        () {
          final error = _makeDioError(404);

          final exc = ServerErrorMapper.fromDioError(error);

          expect(exc.runtimeType, NotFoundException);
        },
      );

      test(
        'Если пришла любая другая, вернуть ServerErrorException',
        () {
          final error = _makeDioError(403);

          final exc = ServerErrorMapper.fromDioError(error);

          expect(exc.runtimeType, ServerErrorException);
        },
      );
    },
  );
}
