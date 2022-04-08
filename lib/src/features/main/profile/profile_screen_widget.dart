import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/di/app_dependencies.dart';
import 'package:where_to_go_today/src/features/main/profile/profile_screen.dart';
import 'package:where_to_go_today/src/features/main/profile/profile_vm.dart';

class ProfileScreenWidget extends StatelessWidget {
  const ProfileScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<ProfileVm>(
      create: (_) => ProfileVm(
        errorHandler: context.read<AppDependencies>().errorHandler,
      ),
      child: Builder(
        builder: (context) => ProfileScreen(
          vm: context.read<ProfileVm>(),
        ),
      ),
    );
  }
}
