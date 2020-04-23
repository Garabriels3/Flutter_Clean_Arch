import 'package:bytebank/app/data/source/local/local_helper.dart';
import 'package:bytebank/app/domain/model/cc.dart';
import 'package:bytebank/app/domain/model/employee.dart';
import 'package:bytebank/app/domain/repository/cc_repository.dart';
import 'package:bytebank/app/domain/repository/employee_repository.dart';
import 'package:bytebank/core/di/service_locator.dart';
import 'package:bytebank/core/remote/http_code.dart';

class CCUseCase {
  final CCRepository repository = serviceLocator<CCRepository>();

  Future<CC> cc() async {
    CC data;
    final response = await repository.cc();
    if (response.status == HttpCode.SUCCESS) {
      data = response.data as CC;
    }
    return data;
  }
}
