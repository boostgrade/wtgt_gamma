import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:where_to_go_today/src/core/domain/place.dart';
import 'package:where_to_go_today/src/core/ui/res/colors/project_colors.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/app_typography.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';
import 'package:where_to_go_today/src/res/asset.dart';

class FavoritePlace extends StatelessWidget {
  static const _borderRadius = BorderRadius.all(Radius.circular(10));

  final Place place;
  final VoidCallback? onPressed;

  const FavoritePlace(this.place, {Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ProjectColors.primaryColor,
        ),
        borderRadius: _borderRadius,
      ),
      child: InkWell(
        borderRadius: _borderRadius,
        onTap: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SvgPicture.asset(
                Asset.svg.iconCocktail,
                height: 24,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (place.name.isNotEmpty)
                      Text(
                        place.name,
                        overflow: TextOverflow.ellipsis,
                        style: const AppTypography.s18w500h20ls(),
                      )
                    else
                      Container(
                        width: 200,
                        height: 20,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                    const SizedBox(height: 5),
                    if (place.name.isNotEmpty)
                      Text(
                        '200 ${context.l10n.m}',
                        overflow: TextOverflow.ellipsis,
                        style: const AppTypography.s16w400h20(),
                      )
                    else
                      Container(
                        width: 50,
                        height: 20,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.grey,
                image: DecorationImage(
                  image: CachedNetworkImageProvider(place.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
