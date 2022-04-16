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
        body: NestedScrollView(
          // floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              automaticallyImplyLeading: false,
              floating: true,
              snap: true,
              toolbarHeight: 72,
              elevation: 4,
              // forceElevated: innerBoxIsScrolled,
              title: TextField(
                controller: vm.searchController,
                autofocus: true,
                decoration: InputDecoration(
                  hintText: context.l10n.placeName,
                ),
                textInputAction: TextInputAction.search,
              ),
              titleSpacing: 24,
            )
          ],
          body: Listener(
            onPointerDown: (_) => FocusManager.instance.primaryFocus?.unfocus(),
            child: Stack(
              alignment: Alignment.center,
              children: [
                ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  itemCount: vm.places.length + 1,
                  itemBuilder: (context, index) {
                    if (vm.places.isEmpty) {
                      return const SizedBox.shrink();
                    }
                    if (index == vm.places.length) {
                      vm.nextPage();

                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 16),
                          child: WtgtCircularProgressIndicator(),
                        ),
                      );
                    } else {
                      final place = vm.places[index];

                      return PlaceCard(
                        key: ValueKey(place.id),
                        vm: PlaceCardVm(
                          context,
                          place: place,
                          locationService: vm.locationService,
                        ),
                      );
                    }
                  },
                  separatorBuilder: (ctx, index) => const SizedBox(height: 16),
                ),
                if (vm.loading && vm.places.isEmpty)
                  const WtgtCircularProgressIndicator()
                else
                  const SizedBox.shrink(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
