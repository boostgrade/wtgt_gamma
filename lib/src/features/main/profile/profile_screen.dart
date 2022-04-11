import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/app_typography.dart';
import 'package:where_to_go_today/src/features/main/profile/favorite_place.dart';
import 'package:where_to_go_today/src/features/main/profile/profile_vm.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';
import 'package:where_to_go_today/src/res/asset.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';

class ProfileScreen extends StatefulWidget {
  final ProfileVm vm;

  const ProfileScreen({Key? key, required this.vm}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileVm get vm => widget.vm;

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
                            CachedNetworkImageProvider(vm.fakeUser().photoUrl),
                        child: Material(
                          shape: const CircleBorder(),
                          clipBehavior: Clip.hardEdge,
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => vm.onAvatar(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 25),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              vm.fakeUser().name,
                              overflow: TextOverflow.ellipsis,
                              style: const AppTypography.s16w500h20(),
                            ),
                            Text(
                              vm.fakeUser().lastName,
                              overflow: TextOverflow.ellipsis,
                              style: const AppTypography.s16w500h20(),
                            ),
                            const SizedBox(height: 10),
                            IconButton(
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              iconSize: 20,
                              icon: SvgPicture.asset(
                                Asset.svg.iconEdit,
                              ),
                              splashRadius: 20,
                              onPressed: () => vm.onEditUserDetails(),
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
                    Asset.svg.iconSettings,
                  ),
                  splashRadius: 25,
                  onPressed: () => vm.onSettings(),
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
                itemCount: vm.fakeUser().favoritePlaces.length,
                itemBuilder: (context, index) {
                  final place = vm.fakeUser().favoritePlaces[index];

                  return FavoritePlace(
                    place,
                    onPressed: () => vm.onFavoritePlace(place.id),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            WtgtButton(
              onPressed: () => vm.onProfileSignOut(),
              label: context.l10n.profileSignOut,
            ),
          ],
        ),
      ),
    );
  }
}
