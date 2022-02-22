import 'package:where_to_go_today/src/core/services/exceptions/server/server_error_exception.dart';
import 'package:where_to_go_today/src/core/ui/messages/message_controller.dart';
import 'package:where_to_go_today/src/core/ui/messages/types/error_snackbar.dart';

import '../scenario_error_handler.dart';

/// Реализация сценария, при котором при каждой ошибке всплывает снекбар
class SnackBarErrorScenarios implements ErrorScenario {
  /// Отображение вида {тип ошибки: функция, для выполнения}
  late final Map<Type, void Function()> behaviors;

  /// Менеджер сообщений, который потребуется для показа снекбаров.
  final MessageController messageController;

  /// Случай, когда поведение задается с помощью приватного метода, для того
  /// чтобы имелась возможность задать его в коде самого класса
  ///
  /// Также необхомо в конструкторе передать менеджер сообщений
  SnackBarErrorScenarios(this.messageController) {
    _setBehavior();
  }

  @override
  void Function() getBehavior(Object error) {
    return behaviors[error.runtimeType] ?? _defaultBehavior();
  }

  /// Устанавливаем поведение в виде отображения (Map)
  void _setBehavior() {
    behaviors = {
      // TODO(any): добавить новые исключения и соспоставить им текст ошибки
      NotFoundException: () =>
          messageController.show(ErrorSnackBar('Not found')),
      AuthorizationException: () => messageController
          .show(ErrorSnackBar('Авторизация не удалась! Попробуйте еще раз')),
    };
  }

  /// Следует указать действие по умолчанию,
  /// для ошибок, которые на данные момент не предусмотрены
  void Function() _defaultBehavior() {
    // ignore: no-empty-block
    return () {};
  }
}
