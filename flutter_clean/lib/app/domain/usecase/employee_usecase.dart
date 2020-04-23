import 'package:bytebank/app/data/source/local/local_helper.dart';
import 'package:bytebank/app/domain/model/employee.dart';
import 'package:bytebank/app/domain/repository/employee_repository.dart';
import 'package:bytebank/core/di/service_locator.dart';
import 'package:bytebank/core/remote/http_code.dart';

class EmployeeUseCase {
  final EmployeeRepository repository = serviceLocator<EmployeeRepository>();

  Future<Employee> employee() async {
    Employee data;
    final response = await repository.employee();
    if (response.status == HttpCode.SUCCESS) {
      data = response.data as Employee;
      LocalHelper.set(LocalKeys.cookie, data.id);
      String id = await LocalHelper.get(LocalKeys.cookie);
      print('DATA ID' + data.id);
      print('LOCAL' + id);
    }
    return data;
  }
}
