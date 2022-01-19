enum ScreenState { idle, loading, error }

class InputPhoneVm {
  ScreenState state = ScreenState.idle;
  bool isButtonEnabled = false;

  // ignore: no-empty-block, avoid-unused-parameters
  void onChangePhoneField(String text) {}

  //ignore: no-empty-block
  void sendPhone() {}
}
