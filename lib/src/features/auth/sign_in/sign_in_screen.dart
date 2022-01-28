import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:where_to_go_today/src/features/auth/sign_in/sotial_login_button.dart';
import 'package:where_to_go_today/src/res/asset.dart';
import 'package:where_to_go_today/src/ui/uikit/wtgt_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late final MaskTextInputFormatter _maskFormatter;
  late bool _isValidPhone;

  @override
  void initState() {
    super.initState();
    _maskFormatter = MaskTextInputFormatter(
      mask: '(###) ###-##-##',
    );
    _isValidPhone = false;
  }

  @override
  Widget build(BuildContext context) {
    // values from the Figma
    const topBlockHeight = 422;
    const bottomBlockHeight = 164;
    final screenHeight = MediaQuery.of(context).size.height;
    final bottomPadding = screenHeight - topBlockHeight - bottomBlockHeight;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  Asset.png.logoWtgt,
                  height: 254,
                ),
                const SizedBox(height: 22),
                TextField(
                  onChanged: (_) => _validatePhone(),
                  decoration: const InputDecoration(
                    labelText: 'Номер телефона',
                    prefixText: '+7 ',
                    hintText: '(XXX) XXX-XX-XX',
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    _maskFormatter,
                  ],
                ),
                const SizedBox(height: 32),
                WtgtButton(
                  label: 'Отправить',
                  onPressed: _isValidPhone ? _onSendCode : null,
                ),
                SizedBox(height: bottomPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SotialLoginButton(
                      imageAsset: Asset.png.iconFacebook,
                      onPressed: _onFacebookLogin,
                    ),
                    SotialLoginButton(
                      imageAsset: Asset.png.iconVkontakte,
                      onPressed: _onVkontakteLogin,
                    ),
                    SotialLoginButton(
                      imageAsset: Asset.png.iconGoogle,
                      onPressed: _onGoogleLogin,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onSendCode() {
    // TODO(any): обработать нажатие на кнопку
    debugPrint('Phone number = +7${_maskFormatter.getUnmaskedText()}');
  }

  void _onFacebookLogin() {
    // TODO(any): обработать нажатие на кнопку
    debugPrint('_onFacebookLogin()');
  }

  void _onVkontakteLogin() {
    // TODO(any): обработать нажатие на кнопку
    debugPrint('_onVkontakteLogin()');
  }

  void _onGoogleLogin() {
    // TODO(any): обработать нажатие на кнопку
    debugPrint('_onGoogleLogin()');
  }

  void _validatePhone() {
    setState(() {
      _isValidPhone = _maskFormatter.isFill();
    });
  }
}
