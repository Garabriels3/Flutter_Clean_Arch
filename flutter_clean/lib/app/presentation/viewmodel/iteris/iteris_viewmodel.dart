import 'package:bytebank/app/domain/usecase/cc_usecase.dart';
import 'package:bytebank/app/domain/usecase/employee_usecase.dart';
import 'package:bytebank/core/di/service_locator.dart';
import 'package:bytebank/core/values/strings.dart';
import 'package:mobx/mobx.dart';

part 'iteris_viewmodel.g.dart';

class IterisViewModel = IterisViewModelBase with _$IterisViewModel;

abstract class IterisViewModelBase with Store {
  final _employeeUseCase = serviceLocator<EmployeeUseCase>();
  final _ccUseCase = serviceLocator<CCUseCase>();

  @observable
  bool isLoading = false;

  @observable
  String message = "";

  @action
  _setLoading(bool value) => isLoading = value;

  @action
  _setMessage(String value) => message = value;

  Future<void> getAll() async {
    _setLoading(true);
    var data = await _employeeUseCase.employee();
    _setLoading(false);
    if (data != null) {
      message = SUCCESS;
      return data;
    } else {
      message = FAILED;
    }
  }

  Future<void> cc() async {
    _setLoading(true);
    var data = await _ccUseCase.cc();
    _setLoading(false);
    if (data != null) {
      message = SUCCESS;
    } else {
      message = FAILED;
    }
  }
}
