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
            Text('Hello world', style: AppTypography.s24w600h20()),
            SizedBox(height: 20),
            Text('Body 2', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.s18w500h20ls()),
            SizedBox(height: 20),
            Text('Promo bold', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.s16w700h20()),
            SizedBox(height: 20),
            Text('Subtitle 1', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.s16w500h20()),
            SizedBox(height: 20),
            Text('Body 1', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.s16w500h20ls()),
            SizedBox(height: 20),
            Text('Caption', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.s16w400h20()),
            SizedBox(height: 20),
            Text('Label', style: TextStyle(fontSize: 18)),
            Text('Hello world', style: AppTypography.s12w400h20()),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
