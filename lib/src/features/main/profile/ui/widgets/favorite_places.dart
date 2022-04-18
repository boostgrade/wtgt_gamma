import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/core/domain/place.dart';

import 'favorite_place.dart';

class FavoritePlaces extends StatelessWidget {
  final List<Place> places;
  final ValueChanged<Place> onPressed;

  const FavoritePlaces({
    Key? key,
    required this.places,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: places.length,
      itemBuilder: (context, index) {
        final place = places[index];

        return FavoritePlace(
          place,
          onPressed: () => onPressed(place),
        );
      },
    );
  }
}
