import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:where_to_go_today/src/features/main/profile/profile_vm.dart';

class ProfileScreen extends StatelessWidget {
  final ProfileVm vm;

  const ProfileScreen({Key? key, required this.vm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => const Scaffold(
        body: Center(
          child: Text('ProfileScreen'),
        ),
      ),
    );
  }
}
