import 'dart:async';

import 'package:bloc/bloc.dart';

/// Миксин для простой работы с ошибками в блоке
/// 
/// Необходимо подмешивать к каждому блоку в приложении
mixin CanThrowExceptionBlocMixin<Event, State> on Bloc<Event, State> {
  final _errorController = StreamController<Object>.broadcast();
  Stream<Object> get errorStream => _errorController.stream;
  
  @override
  void onError(Object error, StackTrace stackTrace) {
    _errorController.addError(error, stackTrace);

    super.onError(error, stackTrace);
  }
}
