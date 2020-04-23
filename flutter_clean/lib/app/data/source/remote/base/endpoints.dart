import 'base_url.dart' as BASE_URL;

class _Employee {
  final list = BASE_URL.base + "/employee";
}

class _CC {
  final list = BASE_URL.gp + "/api/CentroCusto";
}

final employee = _Employee();
final cc = _CC();
