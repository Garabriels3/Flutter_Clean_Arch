import 'package:flutter/services.dart';
import 'package:unique_identifier/unique_identifier.dart';

class UniqueId {
  static Future<String> getFromAllPlatforms() async {
    String identifier = "";
    try {
      identifier = await UniqueIdentifier.serial;
    } on PlatformException {
      identifier = 'Failed to get Unique Identifier';
    }
    return identifier;
  }
}
