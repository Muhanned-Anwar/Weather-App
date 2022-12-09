
import 'package:weather/weather/domain/repository/weather_repository.dart';

import '../entities/weather.dart';

class GetWeatherByCountryName{
  final WeatherRepository repository;

  GetWeatherByCountryName(this.repository);

  Future<Weather> execute(String cityName) async{
    return await repository.getWeatherByCityName(cityName);
  }
}