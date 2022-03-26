import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:where_to_go_today/src/core/domain/place.dart';
import 'package:where_to_go_today/src/core/ui/res/colors/project_colors.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/app_typography.dart';
import 'package:where_to_go_today/src/res/asset.dart';

class FavoritePlace extends StatefulWidget {
  final Place place;

  const FavoritePlace(this.place, {Key? key}) : super(key: key);

  @override
  State<FavoritePlace> createState() => _FavoritePlaceState();
}

class _FavoritePlaceState extends State<FavoritePlace> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ProjectColors.primaryColor,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: SvgPicture.asset(
              Asset.svg.cocktail,
              height: 24,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.place.name,
                style: const AppTypography.s18w500h20ls(),
              ),
              const SizedBox(height: 5),
              Text(
                widget.place.distance != null
                    ? '${widget.place.distance} м'
                    : '',
                style: const AppTypography.s16w400h20(),
              ),
            ],
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: NetworkImage(
                  widget.place.imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
