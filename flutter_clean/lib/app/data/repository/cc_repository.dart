import 'package:bytebank/app/data/source/remote/cc_service.dart';
import 'package:bytebank/app/domain/model/response.dart';
import 'package:bytebank/app/domain/repository/cc_repository.dart';
import 'package:bytebank/core/di/service_locator.dart';
import 'package:bytebank/core/values/strings.dart';
import 'package:bytebank/device/connection.dart';

class CCRepositoryImpl implements CCRepository {
  CCService service = serviceLocator<CCService>();

  @override
  Future<Response> cc() async {
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
