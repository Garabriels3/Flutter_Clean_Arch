import 'dart:io';

import 'package:bytebank/core/values/tokens.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

class AppHttpClient {
  static const String PEM = "assets/certificates/iteris.pem";
  static const String APPLICATION_JSON = "application/json";
  static const String CONTENT_TYPE = "Content-Type";
  static const String AUTHORIZATION = "Authorization";

  Dio _client;

  AppHttpClient() {
    _client = new Dio();
    _certificatePinning();
  }

  Future<void> _certificatePinning() async {
    ByteData bytes = await rootBundle.load(PEM);
    (_client.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      SecurityContext securityContext = SecurityContext();
      securityContext.setTrustedCertificatesBytes(bytes.buffer.asUint8List());
      HttpClient httpClient = HttpClient(context: securityContext);
      return httpClient;
    };
  }

  Future<void> _interceptor() async {
    Map<String, dynamic> headers = {};
    headers[CONTENT_TYPE] = APPLICATION_JSON;
    _client.options.headers = headers;
  }

  Future<void> _bearerTokenInterceptor() async {
    Map<String, dynamic> headers = {};
    headers[CONTENT_TYPE] = APPLICATION_JSON;
    headers[AUTHORIZATION] = CC_BEARER_TOKEN;
    _client.options.headers = headers;
  }

  Future<Response> get(String url) async {
    await _interceptor();
    return _client.get(url);
  }

  Future<Response> getCC(String url) async {
    await _bearerTokenInterceptor();
    return _client.get(url);
  }

  Future<Response> post(String url, {dynamic body}) async {
    await _interceptor();
    return _client.post(url, data: body);
  }

  Future<Response> put(String url, {dynamic body}) async {
    await _interceptor();
    return _client.put(url, data: body);
  }

  Future<Response> delete(String url, {dynamic body}) async {
    await _interceptor();
    return _client.delete(url);
  }
}
