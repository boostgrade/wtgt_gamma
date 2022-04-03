class Asset {
  static final png = _Png();
  static final svg = _Svg();
}

class _Png {
  static const _path = 'assets/images/3.0x/';
  final logoWtgt = '${_path}wtgt_logo.png';
  final placeImage = 'assets/images/place.png';
}

class _Svg {
  static const _pathSignIn = 'assets/images/auth/sign_in/';
  static const _pathOnboarding = 'assets/images/onboarding/';

  final iconFacebook = '${_pathSignIn}icon_facebook.svg';
  final iconGoogle = '${_pathSignIn}icon_google.svg';
  final iconVkontakte = '${_pathSignIn}icon_vkontakte.svg';

  final onboardingFirst = '${_pathOnboarding}onboarding_1.svg';
  final onboardingSecond = '${_pathOnboarding}onboarding_2.svg';
  final onboardingThird = '${_pathOnboarding}onboarding_3.svg';
}
