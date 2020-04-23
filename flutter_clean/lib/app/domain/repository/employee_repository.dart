import 'package:bytebank/app/domain/model/response.dart';

abstract class EmployeeRepository {
  Future<Response> employee();
}