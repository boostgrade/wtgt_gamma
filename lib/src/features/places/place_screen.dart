import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/features/places/custom_sliver_appbar.dart';
import 'package:where_to_go_today/src/features/places/place_vm.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';

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

class _PlaceScreenState extends State<PlaceScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: CustomSliverAppBar(expandedHeight: 350),
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
                      const Text(
                        '''

                  ''',
                      ),
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
