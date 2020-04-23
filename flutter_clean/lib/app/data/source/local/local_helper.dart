import 'package:bytebank/core/util/aes_encryption_helper.dart';
import 'package:bytebank/device/unique_identifier.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalKeys {
  static final String token = "TOKEN";
  static final String cookie = "REQUEST";
  static final String login = "LOGIN";
}

class LocalHelper {
  static SharedPreferences _prefs;

  static Future<dynamic> _getInstance() async =>
      _prefs = await SharedPreferences.getInstance();

  static Future<String> get(String key) async {
    await _getInstance();
    var value = _prefs.getString(key);
    String uniqueId = await UniqueId.getFromAllPlatforms();
    var base64 = EncryptHelper(uniqueId).aesDecrypt(value);
    return base64;
  }

  static void set(String key, String value) async {
    await _getInstance();
    String uniqueId = await UniqueId.getFromAllPlatforms();
    var base64 = EncryptHelper(uniqueId).aesEncrypt(value);
    _prefs.setString(key, base64);
  }

  static void remove(String key) async {
    await _getInstance();
    _prefs.remove(key);
  }

  static Future<bool> clearAll() async {
    await _getInstance();
    return await _prefs.clear();
  }
}
