import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/features/place_detail/place_detail_screen.dart';
import 'package:where_to_go_today/src/features/place_detail/place_detail_vm.dart';

@immutable
class PlaceDetailRoute extends MaterialPage<void> {
  static const routeName = '/place_detail';

  PlaceDetailRoute(String id)
      : super(
          child: Provider<PlaceDetailVm>(
            create: (_) => PlaceDetailVm(),
            child: Builder(
              builder: (context) => PlaceDetailScreen(
                vm: context.read<PlaceDetailVm>(),
                placeId: id,
              ),
            ),
          ),
        );
}
