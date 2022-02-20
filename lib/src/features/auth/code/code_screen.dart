import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:routemaster/routemaster.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model_disposer_mixin.dart';
import 'package:where_to_go_today/src/features/auth/code/code_vm.dart';
import 'package:where_to_go_today/src/features/auth/code/code_vm_state.dart';
import 'package:where_to_go_today/src/features/auth/code/widgets/request_code_button.dart';
import 'package:where_to_go_today/src/features/auth/register/register_route.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';
import 'package:where_to_go_today/src/res/asset.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';

class CodeScreen extends StatefulWidget {
  final CodeVm vm;
  final String phone;

  const CodeScreen({
    Key? key,
    required this.vm,
    required this.phone,
  }) : super(key: key);

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen>
    with ViewModelDisposerMixin<CodeScreen, CodeVm> {
  late final TextEditingController _codeController;

  @override
  CodeVm get vm => widget.vm;

  @override
  void initState() {
    super.initState();
    _codeController = TextEditingController();
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactionBuilder(
      builder: (_) => reaction<CodeVmState>(
        (_) => vm.vmState,
        _vmStateHandler,
      ),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    Asset.png.logoWtgt,
                    height: 254,
                  ),
                ),
                const SizedBox(height: 22),
                TextFormField(
                  controller: _codeController,
                  onChanged: vm.validateCode,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  maxLength: 6,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]+')),
                  ],
                  decoration: InputDecoration(
                    hintText: context.l10n.codeFromSms,
                    helperText: '',
                  ),
                ),
                const SizedBox(height: 12),
                RequestCodeButton(
                  vm: vm,
                  phone: widget.phone,
                ),
                SizedBox(
                  height: _calcBottomPadding(),
                ),
                Observer(
                  builder: (context) => WtgtButton(
                    label: context.l10n.sendCode,
                    onPressed: vm.isValidCode
                        ? () => vm.sendCode(_codeController.text)
                        : null,
                    loading: vm.isLoading,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _vmStateHandler(CodeVmState state) {
    if (state == CodeVmState.successOtp) {
      Routemaster.of(context).replace(RegisterRoute.routeName);
    }
  }

  double _calcBottomPadding() {
    // values from the Figma
    const topBlockHeight = 490;
    const bottomBlockHeight = 60;
    final screenHeight = MediaQuery.of(context).size.height;
    final viewInsets = MediaQuery.of(context).viewInsets;
    final bottomPadding = screenHeight -
        topBlockHeight -
        bottomBlockHeight -
        viewInsets.bottom -
        viewInsets.top;

    return max(bottomPadding, 24);
  }
}
