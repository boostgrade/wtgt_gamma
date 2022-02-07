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
  final iconFacebook = '${_pathSignIn}icon_facebook.svg';
  final iconGoogle = '${_pathSignIn}icon_google.svg';
  final iconVkontakte = '${_pathSignIn}icon_vkontakte.svg';
}
