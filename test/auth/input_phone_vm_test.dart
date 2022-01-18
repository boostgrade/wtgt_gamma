import 'package:flutter_test/flutter_test.dart';
import 'package:where_to_go_today/src/features/auth/ui/phone/input_phone_vm.dart';


void main() {
  group('Тесты вью меодли ввода номера телефона', () {
    final InputPhoneVm vm = InputPhoneVm();

    test('Если ввели номер полностью, кнопка должна быть активна', () {
      final phone = '+7911 111 1111'.replaceAll(' ', '');
      vm.onChangePhoneField(phone);

      expect(vm.isButtonEnabled, true);
    });

    test(
      'Если отправляем номер телефона, получаем состояние загрузки',
      () async {
        vm.sendPhone();

        expect(vm.state, ScreenState.loading);
      },
    );
  });
}
