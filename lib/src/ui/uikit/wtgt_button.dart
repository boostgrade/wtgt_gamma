import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_circular_progress_indicator.dart';

class WtgtButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool loading;
  final double width;

  const WtgtButton({
    Key? key,
    required this.label,
    this.onPressed,
    this.loading = false,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextButton(
        // ignore: no-empty-block
        onPressed: loading ? () {} : onPressed,
        child: loading
            ? const WtgtCircularProgressIndicator()
            : Text(
                label,
                overflow: TextOverflow.ellipsis,
              ),
      ),
    );
  }
}
