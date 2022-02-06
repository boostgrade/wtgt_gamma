import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:where_to_go_today/src/features/authapi/models/login_object.dart';
import 'package:where_to_go_today/src/features/authapi/models/requests/vk_login_request.dart';
import 'package:where_to_go_today/src/features/authapi/models/responses/login_response.dart';
import 'package:where_to_go_today/src/features/authservices/api/auth_api.dart';
import 'package:where_to_go_today/src/features/authservices/repository/auth_repository.dart';

import 'repository_test.mocks.dart';

@GenerateMocks([AuthApi, LoginResponse, LoginObject])
void main() async {
  final dio = Dio();
  final dioAdapter = DioAdapter(dio: dio);

  dio.httpClientAdapter = dioAdapter;

  late AuthRepository tAuthRepository;

  const path = 'https://stoplight.io/mocks/softech/wtgt/75539';

  setUp(() {
    tAuthRepository = AuthRepository(AuthApi(dio));
  });

  const mockToken = '12345';

  const loginJsonResponse = '''
      {
        "user": {
          "id": 10201,
          "name": "Artem",
          "lastName": "Ivanov",
          "phone": "7911223344",
          "birthDate": "1990-10-22T11:58:47Z"
        },
        "token": {
          "token": "dhvcsbdvhu123v21u32v5i42",
          "refreshToken": "dhvcsbdvhu123v21u32v5i42_dfsf"
        }
      }
    ''';

  const voidJsonResponse = '''
    {
      "name": "https://stoplight.io/prism/errors#UNPROCESSABLE_ENTITY",
      "status": 422,
      "detail": "Route resolved, but no method matched",
      "additional": {
        "workspaceSlug": "softech",
        "projectSlug": "wtgt",
        "url": "/logout",
        "dynamic": false
      }
    }
  ''';

  final loginResponse = LoginResponse.fromJson(
    jsonDecode(loginJsonResponse) as Map<String, dynamic>,
  );
  final loginObjectResponse = loginResponse.toDomain();

  final loginHttpResponse = ResponseBody.fromString(
    loginJsonResponse,
    200,
    headers: {
      Headers.contentTypeHeader: [Headers.jsonContentType],
    },
  );

  final voidHttpResponse = ResponseBody.fromString(
    voidJsonResponse,
    200,
    headers: {
      Headers.contentTypeHeader: [Headers.jsonContentType],
    },
  );

  dioAdapter.onPost(
    '$path/login/vk',
    (request) => request.reply(
      200,
      jsonDecode(loginJsonResponse),
    ),
  );

  group(
    'Тесты для репозитория авторизации',
    () {
      test('Метод Логин с VK', () async {
        when(
          await tAuthRepository.loginWithVk(
            VkLoginRequest(token: mockToken),
          ),
        ).thenAnswer(
          (_) => loginObjectResponse,
        );
        final res = await tAuthRepository.loginWithVk(
          VkLoginRequest(token: mockToken),
        );
        expect(
          res,
          loginObjectResponse,
        );
      });
    },
  );
}
