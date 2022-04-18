import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/features/main/my_card/my_card_screen.dart';
import 'package:where_to_go_today/src/features/main/my_card/my_card_vm.dart';

class MyCardScreenWidget extends StatelessWidget {
  const MyCardScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<MyCardVm>(
      create: (_) => MyCardVm(),
      child: Builder(
        builder: (context) => MyCardScreen(
          vm: context.read<MyCardVm>(),
        ),
      ),
    );
  }
}
