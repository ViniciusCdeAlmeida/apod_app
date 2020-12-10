import 'package:apod_app/custom/custom_conection.dart';
import 'package:apod_app/helpers/apod.dart';
import 'package:apod_app/main.dart';
import 'package:dio/dio.dart';

//This file is to get a requests from database or internet
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

  Future<List<Apod>> _getSavedApod() async {
    try {
      return helperApod(await db.apodDao.getApods());
    } on NoSuchMethodError {
      throw "Error.";
    } catch (error) {
      throw error;
    }
  }

  Future<void> _saveApod(Apod apod) async {
    try {
      await db.apodDao.insertApod(apod);
    } on NoSuchMethodError {
      throw "Error.";
    } catch (error) {
      throw error;
    }
  }

  Future<Apod> getApod(String date, String hd) async {
    return await _getApod(date, hd);
  }

  Future<List<Apod>> getSavedApod() async {
    return await _getSavedApod();
  }

  Future<void> saveApod(Apod apod) async {
    await _saveApod(apod);
  }
}
