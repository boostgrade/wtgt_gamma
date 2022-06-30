import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:where_to_go_today/src/core/domain/place.dart';

class PlacesRepository {
  static const _itemsPerPage = 3;

  Future<List<Place>> getPlaces(
    int page,
    String searchText,
  ) async {
    final list = await _getStubPlaces(page);
    debugPrint('!!! page = $page, searchText = $searchText');

    return list;
  }

  Future<List<Place>> _getStubPlaces(int page) async {
    final start = (page - 1) * _itemsPerPage;
    final end = page * _itemsPerPage;
    await Future<void>.delayed(const Duration(seconds: 1));

    return _stubPlaces.sublist(
      start,
      min(end, _stubPlaces.length),
    );
  }
}

const _stubPlaces = [
  Place(
    id: 1,
    name: 'Restaurant 1',
    description:
        'Phasellus odio ipsum, sollicitudin quis magna vitae, tempus pellentesque massa. Vestibulum ullamcorper sem ut placerat sollicitudin. Pellentesque at lacus ultricies, maximus elit aliquam, vestibulum enim. Pellentesque eleifend tellus id augue auctor, et venenatis ante ullamcorper. Maecenas vitae dictum magna. Proin efficitur cursus interdum. Ut lobortis mauris et orci posuere blandit. Pellentesque congue, libero ut imperdiet malesuada, orci erat rhoncus lorem, quis cursus est elit vel nunc. Aenean aliquam mauris quis convallis consequat. Proin bibendum, lorem non tempor pellentesque, lacus urna vehicula lorem, sit amet finibus lorem mi eu sem. Aenean tempor dolor felis, in ultrices leo tempor non. Sed in risus nec urna tincidunt imperdiet molestie ut quam. Ut ultricies, purus eu mollis posuere, sapien lacus molestie arcu, ut suscipit risus dui ac ex. Quisque augue dui, iaculis et lorem vitae, tristique tincidunt eros. Phasellus id arcu suscipit diam lacinia accumsan at a tortor.',
    imageUrl:
        'https://images.pexels.com/photos/1402407/pexels-photo-1402407.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
    latitude: 1,
    longitude: 1,
  ),
  Place(
    id: 2,
    name: 'Restaurant 2',
    description:
        'Phasellus odio ipsum, sollicitudin quis magna vitae, tempus pellentesque massa. Vestibulum ullamcorper sem ut placerat sollicitudin. Pellentesque at lacus ultricies, maximus elit aliquam, vestibulum enim. Pellentesque eleifend tellus id augue auctor, et venenatis ante ullamcorper. Maecenas vitae dictum magna. Proin efficitur cursus interdum. Ut lobortis mauris et orci posuere blandit. Pellentesque congue, libero ut imperdiet malesuada, orci erat rhoncus lorem, quis cursus est elit vel nunc. Aenean aliquam mauris quis convallis consequat. Proin bibendum, lorem non tempor pellentesque, lacus urna vehicula lorem, sit amet finibus lorem mi eu sem. Aenean tempor dolor felis, in ultrices leo tempor non. Sed in risus nec urna tincidunt imperdiet molestie ut quam. Ut ultricies, purus eu mollis posuere, sapien lacus molestie arcu, ut suscipit risus dui ac ex. Quisque augue dui, iaculis et lorem vitae, tristique tincidunt eros. Phasellus id arcu suscipit diam lacinia accumsan at a tortor.',
    imageUrl:
        'https://images.pexels.com/photos/2196685/pexels-photo-2196685.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
    latitude: 2,
    longitude: 2,
  ),
  Place(
    id: 3,
    name: 'Restaurant 3',
    description:
        'Phasellus odio ipsum, sollicitudin quis magna vitae, tempus pellentesque massa. Vestibulum ullamcorper sem ut placerat sollicitudin. Pellentesque at lacus ultricies, maximus elit aliquam, vestibulum enim. Pellentesque eleifend tellus id augue auctor, et venenatis ante ullamcorper. Maecenas vitae dictum magna. Proin efficitur cursus interdum. Ut lobortis mauris et orci posuere blandit. Pellentesque congue, libero ut imperdiet malesuada, orci erat rhoncus lorem, quis cursus est elit vel nunc. Aenean aliquam mauris quis convallis consequat. Proin bibendum, lorem non tempor pellentesque, lacus urna vehicula lorem, sit amet finibus lorem mi eu sem. Aenean tempor dolor felis, in ultrices leo tempor non. Sed in risus nec urna tincidunt imperdiet molestie ut quam. Ut ultricies, purus eu mollis posuere, sapien lacus molestie arcu, ut suscipit risus dui ac ex. Quisque augue dui, iaculis et lorem vitae, tristique tincidunt eros. Phasellus id arcu suscipit diam lacinia accumsan at a tortor.',
    imageUrl:
        'https://images.pexels.com/photos/2277653/pexels-photo-2277653.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
    latitude: 3,
    longitude: 3,
  ),
  Place(
    id: 4,
    name: 'Restaurant 4',
    description:
        'Phasellus odio ipsum, sollicitudin quis magna vitae, tempus pellentesque massa. Vestibulum ullamcorper sem ut placerat sollicitudin. Pellentesque at lacus ultricies, maximus elit aliquam, vestibulum enim. Pellentesque eleifend tellus id augue auctor, et venenatis ante ullamcorper. Maecenas vitae dictum magna. Proin efficitur cursus interdum. Ut lobortis mauris et orci posuere blandit. Pellentesque congue, libero ut imperdiet malesuada, orci erat rhoncus lorem, quis cursus est elit vel nunc. Aenean aliquam mauris quis convallis consequat. Proin bibendum, lorem non tempor pellentesque, lacus urna vehicula lorem, sit amet finibus lorem mi eu sem. Aenean tempor dolor felis, in ultrices leo tempor non. Sed in risus nec urna tincidunt imperdiet molestie ut quam. Ut ultricies, purus eu mollis posuere, sapien lacus molestie arcu, ut suscipit risus dui ac ex. Quisque augue dui, iaculis et lorem vitae, tristique tincidunt eros. Phasellus id arcu suscipit diam lacinia accumsan at a tortor.',
    imageUrl:
        'https://images.pexels.com/photos/2467287/pexels-photo-2467287.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
    latitude: 4,
    longitude: 4,
  ),
  Place(
    id: 5,
    name: 'Restaurant 5',
    description:
        'Phasellus odio ipsum, sollicitudin quis magna vitae, tempus pellentesque massa. Vestibulum ullamcorper sem ut placerat sollicitudin. Pellentesque at lacus ultricies, maximus elit aliquam, vestibulum enim. Pellentesque eleifend tellus id augue auctor, et venenatis ante ullamcorper. Maecenas vitae dictum magna. Proin efficitur cursus interdum. Ut lobortis mauris et orci posuere blandit. Pellentesque congue, libero ut imperdiet malesuada, orci erat rhoncus lorem, quis cursus est elit vel nunc. Aenean aliquam mauris quis convallis consequat. Proin bibendum, lorem non tempor pellentesque, lacus urna vehicula lorem, sit amet finibus lorem mi eu sem. Aenean tempor dolor felis, in ultrices leo tempor non. Sed in risus nec urna tincidunt imperdiet molestie ut quam. Ut ultricies, purus eu mollis posuere, sapien lacus molestie arcu, ut suscipit risus dui ac ex. Quisque augue dui, iaculis et lorem vitae, tristique tincidunt eros. Phasellus id arcu suscipit diam lacinia accumsan at a tortor.',
    imageUrl:
        'https://images.pexels.com/photos/2193600/pexels-photo-2193600.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
    latitude: 5,
    longitude: 5,
  ),
  Place(
    id: 6,
    name: 'Restaurant 6',
    description:
        'Phasellus odio ipsum, sollicitudin quis magna vitae, tempus pellentesque massa. Vestibulum ullamcorper sem ut placerat sollicitudin. Pellentesque at lacus ultricies, maximus elit aliquam, vestibulum enim. Pellentesque eleifend tellus id augue auctor, et venenatis ante ullamcorper. Maecenas vitae dictum magna. Proin efficitur cursus interdum. Ut lobortis mauris et orci posuere blandit. Pellentesque congue, libero ut imperdiet malesuada, orci erat rhoncus lorem, quis cursus est elit vel nunc. Aenean aliquam mauris quis convallis consequat. Proin bibendum, lorem non tempor pellentesque, lacus urna vehicula lorem, sit amet finibus lorem mi eu sem. Aenean tempor dolor felis, in ultrices leo tempor non. Sed in risus nec urna tincidunt imperdiet molestie ut quam. Ut ultricies, purus eu mollis posuere, sapien lacus molestie arcu, ut suscipit risus dui ac ex. Quisque augue dui, iaculis et lorem vitae, tristique tincidunt eros. Phasellus id arcu suscipit diam lacinia accumsan at a tortor.',
    imageUrl:
        'https://images.pexels.com/photos/1402407/pexels-photo-1402407.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
    latitude: 6,
    longitude: 6,
  ),
  Place(
    id: 7,
    name: 'Restaurant 7',
    description:
        'Phasellus odio ipsum, sollicitudin quis magna vitae, tempus pellentesque massa. Vestibulum ullamcorper sem ut placerat sollicitudin. Pellentesque at lacus ultricies, maximus elit aliquam, vestibulum enim. Pellentesque eleifend tellus id augue auctor, et venenatis ante ullamcorper. Maecenas vitae dictum magna. Proin efficitur cursus interdum. Ut lobortis mauris et orci posuere blandit. Pellentesque congue, libero ut imperdiet malesuada, orci erat rhoncus lorem, quis cursus est elit vel nunc. Aenean aliquam mauris quis convallis consequat. Proin bibendum, lorem non tempor pellentesque, lacus urna vehicula lorem, sit amet finibus lorem mi eu sem. Aenean tempor dolor felis, in ultrices leo tempor non. Sed in risus nec urna tincidunt imperdiet molestie ut quam. Ut ultricies, purus eu mollis posuere, sapien lacus molestie arcu, ut suscipit risus dui ac ex. Quisque augue dui, iaculis et lorem vitae, tristique tincidunt eros. Phasellus id arcu suscipit diam lacinia accumsan at a tortor.',
    imageUrl:
        'https://images.pexels.com/photos/2196685/pexels-photo-2196685.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
    latitude: 7,
    longitude: 7,
  ),
  Place(
    id: 8,
    name: 'Restaurant 8',
    description:
        'Phasellus odio ipsum, sollicitudin quis magna vitae, tempus pellentesque massa. Vestibulum ullamcorper sem ut placerat sollicitudin. Pellentesque at lacus ultricies, maximus elit aliquam, vestibulum enim. Pellentesque eleifend tellus id augue auctor, et venenatis ante ullamcorper. Maecenas vitae dictum magna. Proin efficitur cursus interdum. Ut lobortis mauris et orci posuere blandit. Pellentesque congue, libero ut imperdiet malesuada, orci erat rhoncus lorem, quis cursus est elit vel nunc. Aenean aliquam mauris quis convallis consequat. Proin bibendum, lorem non tempor pellentesque, lacus urna vehicula lorem, sit amet finibus lorem mi eu sem. Aenean tempor dolor felis, in ultrices leo tempor non. Sed in risus nec urna tincidunt imperdiet molestie ut quam. Ut ultricies, purus eu mollis posuere, sapien lacus molestie arcu, ut suscipit risus dui ac ex. Quisque augue dui, iaculis et lorem vitae, tristique tincidunt eros. Phasellus id arcu suscipit diam lacinia accumsan at a tortor.',
    imageUrl:
        'https://images.pexels.com/photos/2277653/pexels-photo-2277653.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
    latitude: 8,
    longitude: 8,
  ),
  Place(
    id: 9,
    name: 'Restaurant 9',
    description:
        'Phasellus odio ipsum, sollicitudin quis magna vitae, tempus pellentesque massa. Vestibulum ullamcorper sem ut placerat sollicitudin. Pellentesque at lacus ultricies, maximus elit aliquam, vestibulum enim. Pellentesque eleifend tellus id augue auctor, et venenatis ante ullamcorper. Maecenas vitae dictum magna. Proin efficitur cursus interdum. Ut lobortis mauris et orci posuere blandit. Pellentesque congue, libero ut imperdiet malesuada, orci erat rhoncus lorem, quis cursus est elit vel nunc. Aenean aliquam mauris quis convallis consequat. Proin bibendum, lorem non tempor pellentesque, lacus urna vehicula lorem, sit amet finibus lorem mi eu sem. Aenean tempor dolor felis, in ultrices leo tempor non. Sed in risus nec urna tincidunt imperdiet molestie ut quam. Ut ultricies, purus eu mollis posuere, sapien lacus molestie arcu, ut suscipit risus dui ac ex. Quisque augue dui, iaculis et lorem vitae, tristique tincidunt eros. Phasellus id arcu suscipit diam lacinia accumsan at a tortor.',
    imageUrl:
        'https://images.pexels.com/photos/2467287/pexels-photo-2467287.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
    latitude: 9,
    longitude: 9,
  ),
  Place(
    id: 10,
    name: 'Restaurant 10',
    description:
        'Phasellus odio ipsum, sollicitudin quis magna vitae, tempus pellentesque massa. Vestibulum ullamcorper sem ut placerat sollicitudin. Pellentesque at lacus ultricies, maximus elit aliquam, vestibulum enim. Pellentesque eleifend tellus id augue auctor, et venenatis ante ullamcorper. Maecenas vitae dictum magna. Proin efficitur cursus interdum. Ut lobortis mauris et orci posuere blandit. Pellentesque congue, libero ut imperdiet malesuada, orci erat rhoncus lorem, quis cursus est elit vel nunc. Aenean aliquam mauris quis convallis consequat. Proin bibendum, lorem non tempor pellentesque, lacus urna vehicula lorem, sit amet finibus lorem mi eu sem. Aenean tempor dolor felis, in ultrices leo tempor non. Sed in risus nec urna tincidunt imperdiet molestie ut quam. Ut ultricies, purus eu mollis posuere, sapien lacus molestie arcu, ut suscipit risus dui ac ex. Quisque augue dui, iaculis et lorem vitae, tristique tincidunt eros. Phasellus id arcu suscipit diam lacinia accumsan at a tortor.',
    imageUrl:
        'https://images.pexels.com/photos/2193600/pexels-photo-2193600.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
    latitude: 10,
    longitude: 10,
  ),
];
