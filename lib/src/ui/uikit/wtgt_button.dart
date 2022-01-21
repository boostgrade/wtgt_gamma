import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_circular_progress_indicator.dart';

class WtgtButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool loading;

  const WtgtButton({
    Key? key,
    required this.label,
    this.onPressed,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: loading ? null : onPressed,
      child: loading
          ? const WtgtCircularProgressIndicator()
          : Text(
              label,
              overflow: TextOverflow.ellipsis,
            ),
    );
  }
}
