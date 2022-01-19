enum ScreenState { idle, loading, error }

class SmsCodeVm {
  ScreenState state = ScreenState.idle;
  bool isButtonEnabled = false;

  int countdownToRequest = 30;

  // ignore: no-empty-block, avoid-unused-parameters
  void onChangeCode(String code) {}

  void sendCode() {}

  void requestCode() {}
}
