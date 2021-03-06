import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model_disposer_mixin.dart';
import 'package:where_to_go_today/src/features/auth/sign_in/sign_in_screen_vm.dart';
import 'package:where_to_go_today/src/features/auth/sign_in/social_login_button.dart';
import 'package:where_to_go_today/src/localization/l10n.dart';
import 'package:where_to_go_today/src/res/asset.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';

class SignInScreen extends StatefulWidget {
  final SignInScreenVm vm;

  const SignInScreen({Key? key, required this.vm}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen>
    with ViewModelDisposerMixin<SignInScreen, SignInScreenVm> {
  late final MaskTextInputFormatter _maskFormatter;

  @override
  SignInScreenVm get vm => widget.vm;

  String get _fullPhoneNumber => '+7${_maskFormatter.getUnmaskedText()}';

  @override
  void initState() {
    super.initState();

    _maskFormatter = MaskTextInputFormatter(
      mask: '(###) ###-##-##',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              Image.asset(
                Asset.png.logoWtgt,
                height: 254,
              ),
              const SizedBox(height: 22),
              TextField(
                onChanged: (_) => vm.verifyPhone(_fullPhoneNumber),
                decoration: InputDecoration(
                  labelText: context.l10n.phoneNumberLabel,
                  prefixText: '+7 ',
                  hintText: '(XXX) XXX-XX-XX',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [_maskFormatter],
              ),
              const SizedBox(height: 32),
              Observer(
                builder: (_) => WtgtButton(
                  label: context.l10n.sendButtonLabel,
                  onPressed: vm.isPhoneValid
                      ? () => vm.requestCode(_fullPhoneNumber)
                      : null,
                  loading: vm.isLoading,
                ),
              ),
              SizedBox(
                height: _calcBottomPadding(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SocialLoginButton(
                    imageAsset: Asset.svg.iconFacebook,
                    onPressed: vm.signInWithFacebook,
                  ),
                  SocialLoginButton(
                    imageAsset: Asset.svg.iconVkontakte,
                    onPressed: vm.signInWithVkontakte,
                  ),
                  SocialLoginButton(
                    imageAsset: Asset.svg.iconGoogle,
                    onPressed: vm.signInWithGoogle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _calcBottomPadding() {
    // values from the Figma
    const topBlockHeight = 422;
    const bottomBlockHeight = 164;
    final screenHeight = MediaQuery.of(context).size.height;
    final viewInsets = MediaQuery.of(context).viewInsets;
    final bottomPadding =
        screenHeight - topBlockHeight - bottomBlockHeight - viewInsets.bottom;

    return max(bottomPadding, 24);
  }
}
