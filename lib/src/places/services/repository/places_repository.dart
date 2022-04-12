import 'package:where_to_go_today/src/places/services/api/models/favourite_request.dart';
import 'package:where_to_go_today/src/places/services/api/models/place.dart';
import 'package:where_to_go_today/src/places/services/api/places_api.dart';

class PlacesRepository {
  final PlacesApi _placesApi;

  PlacesRepository(this._placesApi);

  Future<List<Place>> fetchPlaces({
    String? search,
    double? lat,
    double? lon,
    bool? isFavourite,
  }) async {
    final response = await _placesApi.fetchPlaces(
      search: search,
      lat: lat,
      lon: lon,
      isFavourite: isFavourite,
    );

    return response.data;
  }

  Future<Place> fetchPlace(int id) => _placesApi.fetchPlace(id);

  Future<void> setFavourite(int id, bool isFavourite) =>
      _placesApi.setFavourite(
        id,
        FavouriteRequest(favourite: isFavourite),
      );
}
