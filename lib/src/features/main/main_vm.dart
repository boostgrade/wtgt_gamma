import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/core/ui/base/view_model.dart';
import 'package:where_to_go_today/src/core/ui/errors_handling/error_handler.dart';

part 'main_vm.g.dart';

/// ViewModel экрана [MainScreen]
class MainVm = _MainVm with _$MainVm;

abstract class _MainVm extends ViewModel with Store {
  _MainVm({
    required ErrorHandler errorHandler,
  }) : super(errorHandler);
}
