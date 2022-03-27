class Asset {
  static final png = _Png();
  static final svg = _Svg();
}

class _Png {
  static const _path = 'assets/images/3.0x/';
  static const _pathPlace = 'assets/images/place/';

  final logoWtgt = '${_path}wtgt_logo.png';

  final iconCocktail = '${_pathPlace}icon_cocktail.png';
}

class _Svg {
  static const _pathSignIn = 'assets/images/auth/sign_in/';
  static const _pathPlace = 'assets/images/place/';

  final iconFacebook = '${_pathSignIn}icon_facebook.svg';
  final iconGoogle = '${_pathSignIn}icon_google.svg';
  final iconVkontakte = '${_pathSignIn}icon_vkontakte.svg';

  final iconShare = '${_pathPlace}icon_share.svg';
}
