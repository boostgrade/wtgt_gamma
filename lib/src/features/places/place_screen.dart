import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model_disposer_mixin.dart';
import 'package:where_to_go_today/src/core/ui/res/colors/project_colors.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/app_typography.dart';
import 'package:where_to_go_today/src/features/places/custom_sliver_appbar.dart';
import 'package:where_to_go_today/src/features/places/place_vm.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_circular_progress_indicator.dart';

class PlaceScreen extends StatefulWidget {
  final PlaceVm vm;
  final int placeId;

  const PlaceScreen({
    Key? key,
    required this.vm,
    required this.placeId,
  }) : super(key: key);

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> with ViewModelDisposerMixin {
  double bottom = -25.0;

  @override
  PlaceVm get vm => widget.vm;

  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    vm.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: vm.loading
          ? const Center(child: WtgtCircularProgressIndicator())
          : CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverAppBar(
                  expandedHeight: 350,
                  automaticallyImplyLeading: false,
                  backgroundColor: ProjectColors.secondaryColor,
                  flexibleSpace: Stack(
                    fit: StackFit.expand,
                    children: [
                      CachedNetworkImage(
                        imageUrl: vm.place?.imageUrl ?? '',
                        fit: BoxFit.cover,
                      ),
                      FlexibleSpaceBar(
                        centerTitle: false,
                        title: Text(
                          vm.place?.name ?? '',
                          style: const AppTypography.s24w600h20(
                            color: ProjectColors.onSecondaryColor,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -25,
                        right: 24,
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
                    ],
                  ),
                ),
                // SliverPersistentHeader(
                //   pinned: true,
                //   delegate: CustomSliverAppBar(
                //     placeUrl: vm.place != null ? vm.place!.imageUrl : '',
                //     expandedHeight: 350,
                //     placeTitle: vm.place != null ? vm.place!.name : '',
                //   ),
                // ),
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
                            Text(vm.place != null ? vm.place!.description : ''),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
