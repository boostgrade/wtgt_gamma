import 'package:flutter_test/flutter_test.dart';
import 'package:where_to_go_today/src/features/auth/ui/sms/sms_code_vm.dart';

void main() {
  group('Тесты вью меодли ввода кода СМС', () {
    final vm = SmsCodeVm();

    test('Если ввели код полностью, кнопка должна быть активна', () {
      const code = '111111';

      vm.onChangeCode(code);

      expect(vm.isButtonEnabled, true);
    });

    test(
      'Если отправляем код, получаем состояние загрузки',
      () async {
        vm.sendCode();

        expect(vm.state, ScreenState.loading);
      },
    );

    test(
      'Если запрашиваем код повторно, запускается таймер от 30 сек',
      () async {
        vm.requestCode();

        expect(vm.countdownToRequest, 30);
      },
    );
  });
}
