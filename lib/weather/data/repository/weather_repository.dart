
import 'package:weather/weather/data/datasource/base_remote_data_source.dart';
import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository{
  final RemoteDataSource remoteDataSource;


  WeatherRepository(this.remoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String countryName) async{
    return (await remoteDataSource.getWeatherByCityName(countryName))!;
  }

}