import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:where_to_go_today/src/features/main/places/ui/place_card/place_card_vm.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';
import 'package:where_to_go_today/src/res/asset.dart';

class PlaceCard extends StatefulWidget {
  final PlaceCardVm vm;

  const PlaceCard({Key? key, required this.vm}) : super(key: key);

  @override
  State<PlaceCard> createState() => _PlaceCardState();
}

class _PlaceCardState extends State<PlaceCard> {
  bool _animate = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 500),
      _startAnimate,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.vm.openPlaceDetails(context),
      child: Card(
        child: Column(
          children: [
            AnimatedScale(
              duration: const Duration(milliseconds: 500),
              scale: _animate ? 1 : 0.9,
              child: CachedNetworkImage(
                imageUrl: widget.vm.place.imageUrl,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 82,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: SvgPicture.asset(
                      Asset.svg.iconCocktail,
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
                          widget.vm.place.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Observer(
                          builder: (context) => widget.vm.distance == null
                              ? const SizedBox.shrink()
                              : Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: Text(
                                    '${widget.vm.distance} ${context.l10n.m}',
                                  ),
                                ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: IconButton(
                      onPressed: widget.vm.sharePlace,
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

  void _startAnimate() {
    setState(() {
      _animate = true;
    });
  }
}
