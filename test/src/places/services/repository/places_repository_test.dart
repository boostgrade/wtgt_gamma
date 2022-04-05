import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:where_to_go_today/src/places/services/api/models/favourite_request.dart';
import 'package:where_to_go_today/src/places/services/api/models/place.dart';
import 'package:where_to_go_today/src/places/services/api/models/place_list_response.dart';
import 'package:where_to_go_today/src/places/services/api/places_api.dart';
import 'package:where_to_go_today/src/places/services/repository/places_repository.dart';

class MockPlacesApi extends Mock implements PlacesApi {}

class FavouriteRequestFake extends Fake implements FavouriteRequest {}

const placeJson = {
  'id': 10201,
  'name': 'Крутое Кафе',
  'description':
      'orem ipsum dolor sit amet, consectetur adipiscing elit.  In in viverra nisl. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.  Integer posuere non nisl sed suscipit. Sed malesuada leo eu odio pharetra auctor.  Quisque molestie ante sit amet lacus eleifend, dignissim faucibus diam sagittis. Nullam vulputate at velit non fermentum. Mauris viverra eleifend est scelerisque faucibus.  Nulla sed tortor non elit tincidunt feugiat. Praesent commodo elementum tempor.  Quisque sagittis dolor sit amet massa malesuada, pulvinar vestibulum enim ultricies.\n',
  'isFavourite': true,
  'imageUrl': 'string',
  'type': 'bar',
  'shareLink': 'string',
  'sales': [
    {'imageUrl': 'string', 'text': '20% скидки в кафе \"У Красного Барона\"'}
  ]
};

const placesJson = {
  'data': [
    placeJson,
  ],
  'metadata': {'limit': 10, 'offset': 10, 'fullCount': 100}
};

void main() {
  setUpAll(() {
    registerFallbackValue(FavouriteRequestFake());
  });

  group('Тестирование запросов PlacesRepository', () {
    late PlacesRepository placesRepository;
    late MockPlacesApi mockPlacesApi;

    setUp(() {
      mockPlacesApi = MockPlacesApi();
      placesRepository = PlacesRepository(mockPlacesApi);
    });

    test('Получение списка мест', () async {
      when(mockPlacesApi.fetchPlaces)
          .thenAnswer((_) async => PlaceListResponse.fromJson(placesJson));

      final result = await placesRepository.fetchPlaces();

      final expectResult = Place.fromJson(placeJson);

      expect(result.first.id, expectResult.id);
      expect(result.first.description, expectResult.description);
      expect(result.first.imageUrl, expectResult.imageUrl);
      expect(result.first.name, expectResult.name);
      expect(result.first.isFavourite, expectResult.isFavourite);
      expect(result.first.shareLink, expectResult.shareLink);
      expect(result.first.type, expectResult.type);
      expect(
          result.first.sales.first.imageUrl, expectResult.sales.first.imageUrl);
      expect(result.first.sales.first.text, expectResult.sales.first.text);
    });

    test('Получение места по id', () async {
      when(() => mockPlacesApi.fetchPlace(10201))
          .thenAnswer((_) async => Place.fromJson(placeJson));

      final result = await placesRepository.fetchPlace(10201);

      final expectResult = Place.fromJson(placeJson);

      expect(result.id, expectResult.id);
      expect(result.description, expectResult.description);
      expect(result.imageUrl, expectResult.imageUrl);
      expect(result.name, expectResult.name);
      expect(result.isFavourite, expectResult.isFavourite);
      expect(result.shareLink, expectResult.shareLink);
      expect(result.type, expectResult.type);
      expect(result.sales.first.imageUrl, expectResult.sales.first.imageUrl);
      expect(result.sales.first.text, expectResult.sales.first.text);
    });

    test('Установка favourite месту', () async {
      when(
        () => mockPlacesApi.setFavourite(any(), any()),
      ).thenAnswer((_) => Future.value());

      await placesRepository.setFavourite(1, false);

      verify(
        () => mockPlacesApi.setFavourite(
          1,
          any(),
        ),
      ).called(1);
    });
  });
}
