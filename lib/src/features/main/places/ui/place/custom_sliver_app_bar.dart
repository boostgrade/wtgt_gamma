import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:where_to_go_today/src/core/domain/place.dart';
import 'package:where_to_go_today/src/core/ui/res/colors/project_colors.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/app_typography.dart';
import 'package:where_to_go_today/src/res/asset.dart';

class CustomSliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final Place place;

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 50;

  CustomSliverAppBar({required this.expandedHeight, required this.place});

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: [
        Opacity(
          opacity: disappear(shrinkOffset),
          child: Container(
            decoration: BoxDecoration(
              color: ProjectColors.onSurfaceColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(Asset.png.placeImage),
                colorFilter: ColorFilter.mode(
                  ProjectColors.onSurfaceColor.withOpacity(0.4),
                  BlendMode.dstATop,
                ),
              ),
            ),
            child: Align(
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0, bottom: 20),
                child: Text(
                  place.name,
                  style: const AppTypography.s24w600h20(
                    color: ProjectColors.onSecondaryColor,
                  ),
                ),
              ),
              alignment: Alignment.bottomLeft,
            ),
          ),
        ),
        Opacity(
          opacity: appear(shrinkOffset),
          child: AppBar(
            backgroundColor: ProjectColors.secondaryColor,
            title: Padding(
              padding: const EdgeInsets.only(left: 56),
              child: Text(
                place.name,
                style: const AppTypography.s24w600h20(
                  color: ProjectColors.onSecondaryColor,
                ),
              ),
            ),
            centerTitle: false,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 28),
                child: IconButton(
                  splashRadius: 24,
                  icon: const Icon(
                    Icons.bookmark_border,
                    color: ProjectColors.backgroundColor,
                  ),
                  onPressed: () {
                    // TODO(any): Логика добавления в избранное
                  },
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 48,
          left: 16,
          child: IconButton(
            splashRadius: 24,
            icon: const Icon(
              Icons.arrow_back,
              color: ProjectColors.backgroundColor,
            ),
            onPressed: () {
              Routemaster.of(context).pop();
            },
          ),
        ),
        Positioned(
          bottom: -25,
          right: 24,
          child: Opacity(
            opacity: disappear(shrinkOffset),
            child: FloatingActionButton(
              onPressed: () {
                // TODO(any): Логика добавления в избранное
              },
              child: const Icon(
                Icons.bookmark_border,
                color: ProjectColors.surfaceColor,
              ),
            ),
          ),
        ),
      ],
    );
  }

  double appear(double shrinkOffset) => shrinkOffset / expandedHeight;

  double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight;
}
