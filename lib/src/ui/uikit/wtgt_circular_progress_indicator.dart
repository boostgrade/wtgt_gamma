import 'package:flutter/material.dart';

class WtgtCircularProgressIndicator extends StatelessWidget {
  final double side;

  const WtgtCircularProgressIndicator({
    Key? key,
    this.side = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: side,
      height: side,
      child: const CircularProgressIndicator(
        strokeWidth: 3,
      ),
    );
  }
}
