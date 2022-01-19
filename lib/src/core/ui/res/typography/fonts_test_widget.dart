import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/app_typography.dart';

class FontsTestWidget extends StatelessWidget {
  const FontsTestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Headline 2', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.headline2),
            const SizedBox(height: 20),
            const Text('Body 2', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.body2),
            const SizedBox(height: 20),
            const Text('Promo bold', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.promoBold),
            const SizedBox(height: 20),
            const Text('Subtitle 1', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.subtitle1),
            const SizedBox(height: 20),
            const Text('Body 1', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.body1),
            const SizedBox(height: 20),
            const Text('Caption', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.caption),
            const SizedBox(height: 20),
            const Text('Label', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.label),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
