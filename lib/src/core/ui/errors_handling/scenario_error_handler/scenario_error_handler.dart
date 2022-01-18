import '../error_handler.dart';

/// Одна из реализаций [ErrorHandler]
/// Содержит атрибут класса [ErrorScenario], который необходимо задать в конструкторе
/// Этот атрибут содержит некоторое поведение, которое необходимо выполнить при конкретной ошибке
/// В методе [handle] от атрибута [scenario] с помощью метода [getBehavior]
/// получаем это поведение, представленное в виде функции
/// и вывываем метод [call] для того чтобы вызвать её.
class ScenarioErrorHandler implements ErrorHandler {
  final ErrorScenario scenario;

  ScenarioErrorHandler(this.scenario);

  @override
  void handle(Object error) {
    scenario.getBehavior(error).call();
  }
}

/// Класс, служащий для получения некоторого поведения
/// в зависимости от инициированного исключения.
/// Содержит метод [getBehavior] который получает исключение,
/// а возвращает функцию.
abstract class ErrorScenario {
  void Function() getBehavior(Object error);
}
