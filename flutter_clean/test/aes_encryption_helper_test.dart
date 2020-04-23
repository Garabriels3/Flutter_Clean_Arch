import 'package:bytebank/core/util/aes_encryption_helper.dart';
import 'package:test/test.dart';

const String iphoneValue = "EDE2B025-858B-44E8-88FA-26739B754761";
const String androidValue = "7b0ac2e60cb39383";
const String anyValue = "7b0a";
const String value =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit Lorem ipsum dolor sit amet, "
    "consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elitLorem "
    "ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur "
    "adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, "
    "consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, "
    "consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, "
    "consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, "
    "consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, "
    "consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, "
    "consectetur adipiscing elit";

void main() {
  test('AES Encrypt iphone value, length >= 32', () {
    final helper = EncryptHelper(iphoneValue);
    var encrypt = helper.aesEncrypt(value);
    expect(helper.aesDecrypt(encrypt), value);
  });

  test('AES Encrypt android value', () {
    final helper = EncryptHelper(androidValue);
    var encrypt = helper.aesEncrypt(value);
    expect(helper.aesDecrypt(encrypt), value);
  });

  test('AES Encrypt value, length < 32', () {
    final helper = EncryptHelper(anyValue);
    var encrypt = helper.aesEncrypt(value);
    expect(helper.aesDecrypt(encrypt), value);
  });
}
