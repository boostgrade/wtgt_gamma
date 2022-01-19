import 'package:flutter_test/flutter_test.dart';
import 'package:where_to_go_today/src/features/auth/ui/register/register_vm.dart';

void main() {
  group(
    'Тесты вью модель регистрации',
    () {
      final vm = RegisterVm();

      test(
        'Изначально кнопка и чексбокс неактивны',
        () async {
          expect(vm.isButtonEnabled && vm.isAgreed, false);
        },
      );

      test(
        'Если ввели чекбокс  принят и поля заполнены, кнопка должна быть активна',
        () {
          vm
            ..onEmailChanged('test.e@gmail.com')
            ..onNameChanged('Иdан')
            ..onLastNameChanged('Иванов')
            ..onBirthdateChanged(DateTime.now())
            ..acceptAgreement(true);

          expect(vm.isButtonEnabled, true);
        },
      );

      test(
        'Если хотя бы одно поле пустое, кнопка неактивна',
        () async {
          vm.onEmailChanged('');

          expect(vm.isButtonEnabled, false);
        },
      );
    },
  );
}
