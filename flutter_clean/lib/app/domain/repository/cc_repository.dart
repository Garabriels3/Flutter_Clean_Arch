import 'package:bytebank/app/domain/model/response.dart';

abstract class CCRepository {
  Future<Response> cc();
}