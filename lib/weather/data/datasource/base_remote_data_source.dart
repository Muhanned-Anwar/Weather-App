
import 'dart:convert';

import 'package:weather/core/utils/constances.dart';
import 'package:weather/weather/data/model/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource{
  Future<WeatherModel?> getWeatherByCityName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource{
  @override
  Future<WeatherModel?> getWeatherByCityName(String countryName) async{
    try {
      var url = '${AppConstance.baseUrl}/weather?q=$countryName&appid=${AppConstance.appId}';
      var response = await Dio().get(url);
      return WeatherModel.fromJson(json.decode(response.data));
    } catch (e) {
      return null;
    }
  }

}