import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model_disposer_mixin.dart';
import 'package:where_to_go_today/src/core/ui/res/colors/project_colors.dart';
import 'package:where_to_go_today/src/features/onboard/ui/onboarding_container.dart';
import 'package:where_to_go_today/src/features/onboard/ui/onboarding_vm.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';
import 'package:where_to_go_today/src/res/asset.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';

const _dotSize = 10.0;

class OnboardingScreen extends StatefulWidget {
  final OnboardingVm vm;

  const OnboardingScreen({
    required this.vm,
    Key? key,
  }) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _ObBoardingScreenState();
}

class _ObBoardingScreenState extends State<OnboardingScreen>
    with ViewModelDisposerMixin<OnboardingScreen, OnboardingVm> {
  @override
  OnboardingVm get vm => widget.vm;

  @override
  void dispose() {
    vm.pageController.dispose();
    vm.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 383,
            child: PageView(
              onPageChanged: vm.changeButtonLabel,
              controller: vm.pageController,
              children: [
                OnboardingContainer(
                  assetName: Asset.svg.onboardingFirst,
                  description:
                      AppLocalizations.of(context)!.onboardingFirstTitle,
                ),
                OnboardingContainer(
                  assetName: Asset.svg.onboardingSecond,
                  description:
                      AppLocalizations.of(context)!.onboardingSecondTitle,
                ),
                OnboardingContainer(
                  assetName: Asset.svg.onboardingThird,
                  description:
                      AppLocalizations.of(context)!.onboardingThirdTitle,
                ),
              ],
            ),
          ),
          const SizedBox(height: 36),
          SmoothPageIndicator(
            controller: vm.pageController,
            count: 3,
            onDotClicked: vm.onDotClicked,
            effect: const WormEffect(
              dotHeight: _dotSize,
              dotWidth: _dotSize,
              dotColor: ProjectColors.shadowColor,
              activeDotColor: ProjectColors.primaryColor,
            ),
          ),
        ],
      ),
      floatingActionButton: Observer(
        builder: (_) => WtgtButton(
          onPressed: vm.onSkipButtonClick,
          label: vm.buttonLabel,
          width: 151,
        ),
      ),
    );
  }
}
