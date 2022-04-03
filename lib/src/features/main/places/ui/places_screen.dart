import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:where_to_go_today/src/features/main/places/ui/place_card/place_card.dart';
import 'package:where_to_go_today/src/features/main/places/ui/place_card/place_card_vm.dart';
import 'package:where_to_go_today/src/features/main/places/ui/places_vm.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_circular_progress_indicator.dart';

class PlacesScreen extends StatefulWidget {
  final PlacesVm vm;

  const PlacesScreen({Key? key, required this.vm}) : super(key: key);

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen>
    with AutomaticKeepAliveClientMixin {
  late final PlacesVm vm;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    vm = widget.vm;
    vm.searchPlaces();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Observer(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: TextField(
            controller: vm.searchController,
            decoration: InputDecoration(
              hintText: context.l10n.restaurantName,
            ),
          ),
          titleSpacing: 24,
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            ListView.separated(
              itemCount: vm.places.length,
              itemBuilder: (context, index) {
                final place = vm.places[index];

                return PlaceCard(
                  key: ValueKey(place.id),
                  vm: PlaceCardVm(
                    context,
                    place: place,
                    locationService: vm.locationService,
                  ),
                );
              },
              separatorBuilder: (ctx, index) => const SizedBox(height: 16),
            ),
            if (vm.loading)
              const WtgtCircularProgressIndicator()
            else
              const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
