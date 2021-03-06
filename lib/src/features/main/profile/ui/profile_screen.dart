import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/app_typography.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';
import 'package:where_to_go_today/src/res/asset.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_circular_progress_indicator.dart';

import 'profile_vm.dart';
import 'widgets/favorite_places.dart';
import 'widgets/profile_sub_header.dart';

class ProfileScreen extends StatefulWidget {
  final ProfileVm vm;

  const ProfileScreen({Key? key, required this.vm}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileVm get vm => widget.vm;

  @override
  void initState() {
    super.initState();
    vm.getProfile();
  }

  @override
  void dispose() {
    vm.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if (vm.loading) {
          return const Center(
            child: WtgtCircularProgressIndicator(),
          );
        }

        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CircleAvatar(
                                radius: 50.0,
                                backgroundColor: Colors.grey,
                                backgroundImage: vm.profile.photoUrl.isNotEmpty
                                    ? CachedNetworkImageProvider(
                                        vm.profile.photoUrl,
                                      )
                                    : null,
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
                                      vm.profile.name,
                                      overflow: TextOverflow.ellipsis,
                                      style: const AppTypography.s16w500h20(),
                                    ),
                                    Text(
                                      vm.profile.lastName,
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
                  ),
                ),
                ProfileSubHeader(
                  text: context.l10n.profileFavoritesTitle,
                  style: const AppTypography.s24w600h20(),
                ),
                SliverToBoxAdapter(
                  child: vm.init
                      ? Shimmer.fromColors(
                          enabled: vm.init,
                          baseColor: Colors.grey.shade300,
                          highlightColor: Colors.grey.shade100,
                          child: FavoritePlaces(
                            places: vm.profile.favoritePlaces,
                            onPressed: (place) => vm.onFavoritePlace(place.id),
                          ),
                        )
                      : FavoritePlaces(
                          places: vm.profile.favoritePlaces,
                          onPressed: (place) => vm.onFavoritePlace(place.id),
                        ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: WtgtButton(
                          onPressed: () => vm.onProfileSignOut(),
                          label: context.l10n.profileSignOut,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
