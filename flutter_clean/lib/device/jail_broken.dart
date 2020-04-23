import 'package:trust_fall/trust_fall.dart';

class JailBroken {
  static Future<bool> isRooted() async {
    bool fall = await TrustFall.isTrustFall;
    return fall;
  }
}
