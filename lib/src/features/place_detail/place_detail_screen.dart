import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/features/place_detail/place_detail_vm.dart';

class PlaceDetailScreen extends StatelessWidget {
  final PlaceDetailVm vm;
  final String placeId;

  const PlaceDetailScreen({
    Key? key,
    required this.vm,
    required this.placeId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Item # $placeId'),
      ),
    );
  }
}
