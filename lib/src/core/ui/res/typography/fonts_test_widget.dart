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
          children: const [
            Text('Headline 2', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.headline2()),
            SizedBox(height: 20),
            Text('Body 2', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.body2()),
            SizedBox(height: 20),
            Text('Promo bold', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.promoBold()),
            SizedBox(height: 20),
            Text('Subtitle 1', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.subtitle1()),
            SizedBox(height: 20),
            Text('Body 1', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.body1()),
            SizedBox(height: 20),
            Text('Caption', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.caption()),
            SizedBox(height: 20),
            Text('Label', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.label()),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
