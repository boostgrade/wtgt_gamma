import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:where_to_go_today/src/features/main/my_card/my_card_vm.dart';

class MyCardScreen extends StatelessWidget {
  final MyCardVm vm;

  const MyCardScreen({Key? key, required this.vm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => const Scaffold(
        body: Center(
          child: Text('MyCardScreen'),
        ),
      ),
    );
  }
}
