import 'package:bytebank/app/data/mapper/employee_mappper.dart';
import 'package:bytebank/app/domain/model/response.dart';
import 'package:bytebank/core/di/service_locator.dart';
import 'package:bytebank/core/remote/http_client.dart';
import 'package:bytebank/core/remote/http_code.dart';

import './base/endpoints.dart' as Endpoints;

class EmployeeService {
  final client = serviceLocator<AppHttpClient>();

  Future<Response> getAll() async {
    Response response = Response();
    final String url = Endpoints.employee.list;
    final ret = client.get(url);

    await ret.then((res) {
      response.status = res.statusCode;
      response.data = EmployeeMapper.fromJson(res.data);
      response.message = res.statusMessage;
    }).catchError((e) {
      response.status = HttpCode.INTERNAL_SERVER_ERROR;
      response.data = e;
      response.message = "Server Error";
    });

    return response;
  }
}
