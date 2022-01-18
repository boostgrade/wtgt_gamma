// ignore_for_file: no-empty-block

enum ScreenState { idle, loading, error }

class SmsCodeVm {
  ScreenState state = ScreenState.idle;
  bool isButtonEnabled = false;

  int countdownToRequest = 30;

  void onChangeCode(String code) {}

  void sendCode() {}

  void requestCode() {}
}
