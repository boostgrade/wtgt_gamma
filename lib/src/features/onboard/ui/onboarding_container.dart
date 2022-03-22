import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:where_to_go_today/src/core/ui/res/colors/project_colors.dart';

const _containerPadding = EdgeInsets.symmetric(horizontal: 24);

class OnboardingContainer extends StatelessWidget {
  final String assetName;
  final String description;

  const OnboardingContainer({
    Key? key,
    required this.assetName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _containerPadding,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: ProjectColors.primaryColor),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              assetName,
              width: 150,
              height: 150,
            ),
            Text(
              description,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
