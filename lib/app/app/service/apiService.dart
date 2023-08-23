import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiService {
  static const String baseUrl = 'https://mocki.io/';
  static const String basePort = 'v1';
  final Dio dio = Dio();

  static Future<Response> getOnlyCategoryList() async {
    Response? response;
    var dio = Dio();
    var url = "";
    url = '$baseUrl$basePort/02e91d9f-4d8c-4eb4-a4f9-bb4a60ffdaf9';
    print(url);
    try {
      response = await dio.get(
        url,
        options: Options(contentType: Headers.jsonContentType),
      );
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return response!;
  }
}
