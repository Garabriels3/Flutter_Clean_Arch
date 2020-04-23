import 'package:bytebank/app/domain/model/cc.dart';

class CCMapper {
  static List<CC> fromJsonList(List<dynamic> json) =>
      json.map((i) => fromJson(i)).toList();

  static CC fromJson(Map<String, dynamic> json) {
    return CC(
      id: json["id"] as String,
    );
  }
}
