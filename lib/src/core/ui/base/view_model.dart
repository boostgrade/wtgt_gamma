import 'package:rxdart/rxdart.dart';
import 'package:where_to_go_today/src/core/services/base/throw_exception_bloc.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/error_handler.dart';

/// Базовый класс для всех делегатов презентационной логики
class ViewModel {
  /// Обработчик ошибок, поставляется через конструктор.
  final ErrorHandler errorHandler;

  final CompositeSubscription _compositeSubscription = CompositeSubscription();

  ViewModel(this.errorHandler);

  /// Подписывает вьюмодель на блок
  ///
  /// Любой блок в приложении пропускем именно через эжту функцию.
  /// Автоматически подписывает на событие ошибок.
  void observeBloc<S, B extends CanThrowExceptionBlocMixin<Object, S>>(
    B bloc,
    void Function(S) onState, {
    Function? onError,
  }) {
    final subs = bloc.stream.listen(onState);
    final errorSubs = bloc.errorStream.doOnError(
      (e, stacktrace) {
        errorHandler.handle(e);
      },
    ).listen(
      null,
      onError: onError,
    );

    _compositeSubscription.add(subs);
    _compositeSubscription.add(errorSubs);
  }

  /// Подписывает на изменения стрима некоторую функцию.
  /// Основный метод для отслеживания измнений внешних сервисов.
  /// Опционально можно установить колбек на ошибки.
  ///
  /// Function? - так как onError у Stream, может быть как `void Function(Object error)` так и
  /// `void Function(Object error, StackTrace)`
  void observe<T>(
    Stream<T> stream,
    void Function(T) onEvent, {
    Function? onError,
  }) {
    _compositeSubscription.add(
      stream.doOnError(
        (e, stacktrace) {
          errorHandler.handle(e);
        },
      ).listen(
        onEvent,
        onError: onError,
      ),
    );
  }

  /// Освобождает все подписки
  void dispose() {
    _compositeSubscription.dispose();
  }
}
