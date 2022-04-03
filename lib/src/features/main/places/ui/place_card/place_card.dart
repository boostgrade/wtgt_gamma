import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:where_to_go_today/src/features/main/places/ui/place_card/place_card_vm.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';
import 'package:where_to_go_today/src/res/asset.dart';

class PlaceCard extends StatelessWidget {
  final PlaceCardVm vm;

  const PlaceCard({Key? key, required this.vm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => vm.openPlaceDetails(context),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: vm.place.imageUrl,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 82,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Image.asset(
                      Asset.png.iconCocktail,
                      width: 24,
                      height: 24,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          vm.place.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Observer(
                          builder: (context) => vm.distance == null
                              ? const SizedBox.shrink()
                              : Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: Text(
                                    '${vm.distance} ${context.l10n.m}',
                                  ),
                                ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: IconButton(
                      onPressed: vm.sharePlace,
                      icon: SvgPicture.asset(
                        Asset.svg.iconShare,
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
