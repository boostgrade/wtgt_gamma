import 'package:flutter/material.dart';

class SotialLoginButton extends StatelessWidget {
  final String imageAsset;
  final VoidCallback? onPressed;

  const SotialLoginButton({
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
      icon: Image.asset(
        imageAsset,
        width: 48,
        height: 48,
      ),
    );
  }
}
