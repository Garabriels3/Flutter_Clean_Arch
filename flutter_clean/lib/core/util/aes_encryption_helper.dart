import 'package:encrypt/encrypt.dart';

class EncryptHelper {
  static const int LENGTH_IV = 16;
  static const int ZERO_LENGTH = 0;
  static const int MAX_KEY_LENGTH = 32;
  static const String DASH = "-";

  Key _key;
  Encrypter _aes;
  IV _iv;

  EncryptHelper(String key) {
    _key = Key.fromUtf8(_getKey(key));
    _aes = Encrypter(AES(_key));
    _iv = IV.fromLength(LENGTH_IV);
  }

  String aesEncrypt(String plainText) =>
      _aes.encrypt(plainText, iv: _iv).base64;

  String aesDecrypt(String base64) => _aes.decrypt64(base64, iv: _iv);

  String _getKey(String key) {
    if (key.length >= MAX_KEY_LENGTH) {
      return key.substring(ZERO_LENGTH, MAX_KEY_LENGTH);
    } else {
      int length = key.length;
      for (var i = ZERO_LENGTH; i < MAX_KEY_LENGTH - length; i++) {
        key += DASH;
      }
      return key;
    }
  }
}
