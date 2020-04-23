import 'package:bytebank/app/data/source/remote/employee_service.dart';
import 'package:bytebank/app/domain/model/response.dart';
import 'package:bytebank/app/domain/repository/employee_repository.dart';
import 'package:bytebank/core/di/service_locator.dart';
import 'package:bytebank/core/values/strings.dart';
import 'package:bytebank/device/connection.dart';

class EmployeeRepositoryImpl implements EmployeeRepository {
  EmployeeService service = serviceLocator<EmployeeService>();

  @override
  Future<Response> employee() async {
    Response response = Response();
    final hasConnection = await ConnectionHelper.hasConnection();
    if (hasConnection) {
      response = await this.service.getAll();
    } else {
      response.message = OFFLINE;
    }
    return response;
  }
}
