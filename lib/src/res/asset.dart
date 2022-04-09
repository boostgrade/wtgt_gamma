class Asset {
  static final png = _Png();
  static final svg = _Svg();
}

class _Png {
  static const _path = 'assets/images/3.0x/';

  final logoWtgt = '${_path}wtgt_logo.png';
}

class _Svg {
  static const _pathSignIn = 'assets/images/auth/sign_in/';
  static const _pathProfile = 'assets/images/profile/';
  static const _pathPlace = 'assets/images/place/';
  static const _pathOnboarding = 'assets/images/onboarding/';

  final iconFacebook = '${_pathSignIn}icon_facebook.svg';
  final iconGoogle = '${_pathSignIn}icon_google.svg';
  final iconVkontakte = '${_pathSignIn}icon_vkontakte.svg';
  final iconEdit = '${_pathProfile}edit.svg';
  final iconSettings = '${_pathProfile}settings.svg';
  final iconCocktail = '${_pathPlace}icon_cocktail.svg';

  final onboardingFirst = '${_pathOnboarding}onboarding_1.svg';
  final onboardingSecond = '${_pathOnboarding}onboarding_2.svg';
  final onboardingThird = '${_pathOnboarding}onboarding_3.svg';

  final iconShare = '${_pathPlace}icon_share.svg';
}
