import 'package:bytebank/app/domain/model/employee.dart';

class EmployeeMapper {
  static List<Employee> fromJsonList(List<dynamic> json) =>
      json.map((i) => fromJson(i)).toList();

  static Employee fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json["id"] as String,
      code: json["code"] as String,
      name: json["name"] as String,
      status: json["status"] as int,
    );
  }
}
