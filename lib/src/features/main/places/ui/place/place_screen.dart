import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/features/main/places/ui/place/custom_sliver_app_bar.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';

class PlaceScreen extends StatefulWidget {
  final int placeId;

  const PlaceScreen({
    Key? key,
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
 Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in viverra nisl. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer posuere non nisl sed suscipit. Sed malesuada leo eu odio pharetra auctor. Quisque molestie ante sit amet lacus eleifend, dignissim faucibus diam sagittis. 

 Nullam vulputateat velit non fermentum. Mauris viverra eleifend est scelerisque faucibus. Nulla sed tortor non elit tincidunt feugiat. Praesent commodo elementum tempor. Quisque sagittis dolor sit amet massa malesuada, pulvinar vestibulum enim ultricies. Sed dictum leo a efficitur varius. Vestibulum euismod, leo eu lobortis tempus, augue dui fringilla tellus, eget feugiat mi magna vitae magna. In velit nunc, rhoncus ac lobortis ut, posuere vel leo. 

 Pellentesque quis augue sed odio iaculis suscipit eget et erat. Maecenas risus magna, euismod varius rutrum aliquet, fringilla at ipsum. Suspendisse et nunc nisi. Curabitur at fermentum massa. Donec sodales liberoat placerat tempus. Fusce vestibulum, massa eu elementum consectetur, lectus elit luctus nulla, ac aliquam lorem libero sed ligula. Phasellus cursus elit vitae arcu fermentum,et vestibulum tellus laoreet. Nam eget lacus quis augue tempuscursus.

 Suspendisse finibus justo sit amet dolor varius consequat. Vestibulum aliquam, odio vitae venenatis cursus, purus metus faucibus ligula, vel gravida libero libero eu elit. Nunc aliquet felis vitae quam elementum molestie. Quisque vel nisl mauris. Phasellus tempor auctor lorem at dapibus. In hac habitasse platea dictumst. Vestibulum vel justo pretium, semper magna vitae, viverra magna. Interdum et malesuada fames ac ante ipsum primis in faucibus.Ut eu nibh non urna rhoncus imperdiet ut eu sem. Donec fringilla lorem eu libero aliquet pharetra. Maecenas eu neque nisl.
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
