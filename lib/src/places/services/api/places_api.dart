import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'models/favourite_request.dart';
import 'models/place.dart';
import 'models/place_list_response.dart';

part 'places_api.g.dart';

@RestApi(baseUrl: 'https://stoplight.io/mocks/softech/wtgt/75539')
abstract class PlacesApi {
  factory PlacesApi(Dio dio, {String baseUrl}) = _PlacesApi;

  @GET('/places')
  Future<PlaceListResponse> fetchPlaces({
    @Query('search') String? search,
    @Query('lat') double? lat,
    @Query('lon') double? lon,
    @Query('fav') bool? isFavourite,
  });

  @GET('/place/{id}')
  Future<Place> fetchPlace(@Path() int id);

  @PUT('/place/{id}/favourite')
  Future<void> setFavourite(@Path() int id, @Body() FavouriteRequest body);
}
