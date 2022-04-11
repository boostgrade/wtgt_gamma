import 'package:flutter/foundation.dart';
import 'package:where_to_go_today/src/core/domain/place.dart';

class PlacesRepository {
  Future<List<Place>> getPlaces(String searchText) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    debugPrint('!!! searchText = $searchText');

    return _stubPlaces;
  }

  Future<Place> getPlace(int placeId) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    debugPrint('!!! placeId = $placeId');

    return _place;
  }
}

const _place = Place(
  id: 1,
  name: 'Restaurant 1',
  description:
      'Phasellus odio ipsum, sollicitudin quis magna vitae, tempus pellentesque massa. Vestibulum ullamcorper sem ut placerat sollicitudin. Pellentesque at lacus ultricies, maximus elit aliquam, vestibulum enim. Pellentesque eleifend tellus id augue auctor, et venenatis ante ullamcorper. Maecenas vitae dictum magna. Proin efficitur cursus interdum. Ut lobortis mauris et orci posuere blandit. Pellentesque congue, libero ut imperdiet malesuada, orci erat rhoncus lorem, quis cursus est elit vel nunc. Aenean aliquam mauris quis convallis consequat. Proin bibendum, lorem non tempor pellentesque, lacus urna vehicula lorem, sit amet finibus lorem mi eu sem. Aenean tempor dolor felis, in ultrices leo tempor non. Sed in risus nec urna tincidunt imperdiet molestie ut quam. Ut ultricies, purus eu mollis posuere, sapien lacus molestie arcu, ut suscipit risus dui ac ex. Quisque augue dui, iaculis et lorem vitae, tristique tincidunt eros. Phasellus id arcu suscipit diam lacinia accumsan at a tortor.',
  imageUrl:
      'https://images.pexels.com/photos/1402407/pexels-photo-1402407.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
);

const _stubPlaces = [
  Place(
    id: 1,
    name: 'Restaurant 1',
    description:
        'Phasellus odio ipsum, sollicitudin quis magna vitae, tempus pellentesque massa. Vestibulum ullamcorper sem ut placerat sollicitudin. Pellentesque at lacus ultricies, maximus elit aliquam, vestibulum enim. Pellentesque eleifend tellus id augue auctor, et venenatis ante ullamcorper. Maecenas vitae dictum magna. Proin efficitur cursus interdum. Ut lobortis mauris et orci posuere blandit. Pellentesque congue, libero ut imperdiet malesuada, orci erat rhoncus lorem, quis cursus est elit vel nunc. Aenean aliquam mauris quis convallis consequat. Proin bibendum, lorem non tempor pellentesque, lacus urna vehicula lorem, sit amet finibus lorem mi eu sem. Aenean tempor dolor felis, in ultrices leo tempor non. Sed in risus nec urna tincidunt imperdiet molestie ut quam. Ut ultricies, purus eu mollis posuere, sapien lacus molestie arcu, ut suscipit risus dui ac ex. Quisque augue dui, iaculis et lorem vitae, tristique tincidunt eros. Phasellus id arcu suscipit diam lacinia accumsan at a tortor.',
    imageUrl:
        'https://images.pexels.com/photos/1402407/pexels-photo-1402407.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
  ),
  Place(
    id: 2,
    name: 'Restaurant 2',
    description:
        'Phasellus odio ipsum, sollicitudin quis magna vitae, tempus pellentesque massa. Vestibulum ullamcorper sem ut placerat sollicitudin. Pellentesque at lacus ultricies, maximus elit aliquam, vestibulum enim. Pellentesque eleifend tellus id augue auctor, et venenatis ante ullamcorper. Maecenas vitae dictum magna. Proin efficitur cursus interdum. Ut lobortis mauris et orci posuere blandit. Pellentesque congue, libero ut imperdiet malesuada, orci erat rhoncus lorem, quis cursus est elit vel nunc. Aenean aliquam mauris quis convallis consequat. Proin bibendum, lorem non tempor pellentesque, lacus urna vehicula lorem, sit amet finibus lorem mi eu sem. Aenean tempor dolor felis, in ultrices leo tempor non. Sed in risus nec urna tincidunt imperdiet molestie ut quam. Ut ultricies, purus eu mollis posuere, sapien lacus molestie arcu, ut suscipit risus dui ac ex. Quisque augue dui, iaculis et lorem vitae, tristique tincidunt eros. Phasellus id arcu suscipit diam lacinia accumsan at a tortor.',
    imageUrl:
        'https://images.pexels.com/photos/2196685/pexels-photo-2196685.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
  ),
  Place(
    id: 3,
    name: 'Restaurant 3',
    description:
        'Phasellus odio ipsum, sollicitudin quis magna vitae, tempus pellentesque massa. Vestibulum ullamcorper sem ut placerat sollicitudin. Pellentesque at lacus ultricies, maximus elit aliquam, vestibulum enim. Pellentesque eleifend tellus id augue auctor, et venenatis ante ullamcorper. Maecenas vitae dictum magna. Proin efficitur cursus interdum. Ut lobortis mauris et orci posuere blandit. Pellentesque congue, libero ut imperdiet malesuada, orci erat rhoncus lorem, quis cursus est elit vel nunc. Aenean aliquam mauris quis convallis consequat. Proin bibendum, lorem non tempor pellentesque, lacus urna vehicula lorem, sit amet finibus lorem mi eu sem. Aenean tempor dolor felis, in ultrices leo tempor non. Sed in risus nec urna tincidunt imperdiet molestie ut quam. Ut ultricies, purus eu mollis posuere, sapien lacus molestie arcu, ut suscipit risus dui ac ex. Quisque augue dui, iaculis et lorem vitae, tristique tincidunt eros. Phasellus id arcu suscipit diam lacinia accumsan at a tortor.',
    imageUrl:
        'https://images.pexels.com/photos/2277653/pexels-photo-2277653.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
  ),
  Place(
    id: 4,
    name: 'Restaurant 4',
    description:
        'Phasellus odio ipsum, sollicitudin quis magna vitae, tempus pellentesque massa. Vestibulum ullamcorper sem ut placerat sollicitudin. Pellentesque at lacus ultricies, maximus elit aliquam, vestibulum enim. Pellentesque eleifend tellus id augue auctor, et venenatis ante ullamcorper. Maecenas vitae dictum magna. Proin efficitur cursus interdum. Ut lobortis mauris et orci posuere blandit. Pellentesque congue, libero ut imperdiet malesuada, orci erat rhoncus lorem, quis cursus est elit vel nunc. Aenean aliquam mauris quis convallis consequat. Proin bibendum, lorem non tempor pellentesque, lacus urna vehicula lorem, sit amet finibus lorem mi eu sem. Aenean tempor dolor felis, in ultrices leo tempor non. Sed in risus nec urna tincidunt imperdiet molestie ut quam. Ut ultricies, purus eu mollis posuere, sapien lacus molestie arcu, ut suscipit risus dui ac ex. Quisque augue dui, iaculis et lorem vitae, tristique tincidunt eros. Phasellus id arcu suscipit diam lacinia accumsan at a tortor.',
    imageUrl:
        'https://images.pexels.com/photos/2467287/pexels-photo-2467287.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
  ),
  Place(
    id: 5,
    name: 'Restaurant 5',
    description:
        'Phasellus odio ipsum, sollicitudin quis magna vitae, tempus pellentesque massa. Vestibulum ullamcorper sem ut placerat sollicitudin. Pellentesque at lacus ultricies, maximus elit aliquam, vestibulum enim. Pellentesque eleifend tellus id augue auctor, et venenatis ante ullamcorper. Maecenas vitae dictum magna. Proin efficitur cursus interdum. Ut lobortis mauris et orci posuere blandit. Pellentesque congue, libero ut imperdiet malesuada, orci erat rhoncus lorem, quis cursus est elit vel nunc. Aenean aliquam mauris quis convallis consequat. Proin bibendum, lorem non tempor pellentesque, lacus urna vehicula lorem, sit amet finibus lorem mi eu sem. Aenean tempor dolor felis, in ultrices leo tempor non. Sed in risus nec urna tincidunt imperdiet molestie ut quam. Ut ultricies, purus eu mollis posuere, sapien lacus molestie arcu, ut suscipit risus dui ac ex. Quisque augue dui, iaculis et lorem vitae, tristique tincidunt eros. Phasellus id arcu suscipit diam lacinia accumsan at a tortor.',
    imageUrl:
        'https://images.pexels.com/photos/2193600/pexels-photo-2193600.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
  ),
];
