import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:where_to_go_today/src/core/ui/res/colors/project_colors.dart';
import 'package:where_to_go_today/src/core/ui/res/typography/app_typography.dart';
import 'package:where_to_go_today/src/features/auth/code/code_vm.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';

class RequestCodeButton extends StatelessWidget {
  final CodeVm vm;
  final String phone;

  const RequestCodeButton({
    Key? key,
    required this.vm,
    required this.phone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => InkWell(
        onTap: vm.canRequestCode ? () => vm.requestCode(phone) : null,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: vm.canRequestCode
              ? Text(
                  context.l10n.requestCode,
                  style: const AppTypography.s16w400h20().copyWith(
                    decoration: TextDecoration.underline,
                  ),
                )
              : RichText(
                  text: TextSpan(
                    text: context.l10n.newCodeIn,
                    style: const AppTypography.s16w400h20(),
                    children: [
                      TextSpan(
                        text: '${vm.countdown}',
                        style: const AppTypography.s16w500h20(
                          color: ProjectColors.cardColor,
                        ),
                      ),
                      TextSpan(
                        text: AppLocalizations.of(context)?.seconds,
                        style: const AppTypography.s16w500h20(
                          color: ProjectColors.cardColor,
                        ),
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
