import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:where_to_go_today/src/di/app_dependencies.dart';
import 'package:where_to_go_today/src/features/onboard/ui/onboarding_screen.dart';
import 'package:where_to_go_today/src/features/onboard/ui/onboarding_vm.dart';

class OnboardingRoute extends MaterialPage<void> {
  static const routeName = '/onboarding';

  OnboardingRoute()
      : super(
          child: Provider<OnboardingVm>(
            create: (ctx) => OnboardingVm(
              ctx,
              ctx.read<AppDependencies>().onboardingBloc,
              errorHandler: ctx.read<AppDependencies>().errorHandler,
            ),
            child: Builder(
              builder: (context) {
                return OnboardingScreen(
                  vm: context.read<OnboardingVm>(),
                );
              },
            ),
          ),
        );
}
