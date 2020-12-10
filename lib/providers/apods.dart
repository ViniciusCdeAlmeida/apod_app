import 'package:apod_app/custom/custom_conection.dart';
import 'package:apod_app/helpers/apod.dart';
import 'package:dio/dio.dart';

class Apods {
  Future<Apod> _getApod(String date, String hd) async {
    try {
      Response response = await Endpoint.getApod(date: date, hd: hd);
      return Apod.fromJson(response.data);
    } on NoSuchMethodError {
      throw "Error.";
    } catch (error) {
      throw error;
    }
  }

  Future<Apod> getApod(String date, String hd) async {
    return await _getApod(date, hd);
  }
}
