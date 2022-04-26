import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:where_to_go_today/src/core/domain/place.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model_disposer_mixin.dart';
import 'package:where_to_go_today/src/features/main/places/ui/place/custom_sliver_app_bar.dart';
import 'package:where_to_go_today/src/features/main/places/ui/place/place_vm.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_circular_progress_indicator.dart';

class PlaceScreen extends StatelessWidget {
  final int placeId;
  final PlaceVm vm;

  const PlaceScreen({
    Key? key,
    required this.placeId,
    required this.vm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => Scaffold(
        body: vm.loading
            ? const Center(child: WtgtCircularProgressIndicator())
            : CustomScrollView(
                slivers: [
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: CustomSliverAppBar(
                      expandedHeight: 350,
                      place: vm.place!,
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            children: [
                              const SizedBox(height: 35),
                              WtgtButton(label: context.l10n.book),
                              const SizedBox(height: 35),
                              Text(vm.place?.description ?? '')
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
