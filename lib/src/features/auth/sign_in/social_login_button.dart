import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLoginButton extends StatelessWidget {
  final String imageAsset;
  final VoidCallback? onPressed;

  const SocialLoginButton({
    Key? key,
    required this.imageAsset,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      splashRadius: 24,
      onPressed: onPressed,
      icon: SvgPicture.asset(
        imageAsset,
        width: 48,
        height: 48,
      ),
    );
  }
}
