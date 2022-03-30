import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:where_to_go_today/src/core/domain/user.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/app_typography.dart';
import 'package:where_to_go_today/src/features/profile/ui/profile/favorite_place.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';
import 'package:where_to_go_today/src/res/asset.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';

class ProfileScreen extends StatefulWidget {
  final User user;

  const ProfileScreen(this.user, {Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage:
                            CachedNetworkImageProvider(widget.user.photoUrl),
                        child: Material(
                          shape: const CircleBorder(),
                          clipBehavior: Clip.hardEdge,
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              // TODO(any): обработать нажатие на кнопку
                            },
                          ),
                        ),
                      ),
                      const SizedBox(width: 25),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.user.name,
                              overflow: TextOverflow.ellipsis,
                              style: const AppTypography.s16w500h20(),
                            ),
                            Text(
                              widget.user.lastName,
                              overflow: TextOverflow.ellipsis,
                              style: const AppTypography.s16w500h20(),
                            ),
                            const SizedBox(height: 10),
                            IconButton(
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              iconSize: 20,
                              icon: SvgPicture.asset(
                                Asset.svg.edit,
                              ),
                              splashRadius: 20,
                              onPressed: () {
                                // TODO(any): обработать нажатие на кнопку
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  iconSize: 35,
                  icon: SvgPicture.asset(
                    Asset.svg.settings,
                  ),
                  splashRadius: 25,
                  onPressed: () {
                    // TODO(any): обработать нажатие на кнопку
                  },
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                context.l10n.profileFavoritesTitle,
                style: const AppTypography.s24w600h20(),
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                itemCount: widget.user.favoritePlaces.length,
                itemBuilder: (context, index) {
                  final place = widget.user.favoritePlaces[index];

                  return FavoritePlace(
                    place,
                    onTap: () {
                      // TODO(any): обработать нажатие на кнопку
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            WtgtButton(
              onPressed: () {
                // TODO(any): обработать нажатие на кнопку
              },
              label: context.l10n.profileSignOut,
            ),
          ],
        ),
      ),
    );
  }
}
