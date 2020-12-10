import 'package:dio/dio.dart';

Dio getConection() {
  Dio dio = new Dio()..options.baseUrl = "https://api.nasa.gov/planetary/";
  return dio;
}

class Endpoint {
  static Future getApod({String date, String hd}) {
    return getConection().get(
        "apod?api_key=sl6el3HcX7qeFPlUvSCW0D6qd9a4z9vriu4yTb6z&date=$date&hd=$hd");
  }
}
