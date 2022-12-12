import 'package:flutter/material.dart';
import 'package:weather/weather/data/datasource/base_remote_data_source.dart';
import 'package:weather/weather/data/repository/weather_repository.dart';
import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/base_weather_repository.dart';
import 'package:weather/weather/domain/usecases/get_weather_by_country_name.dart';

Weather? weather;
void main() async{
  BaseRemoteDataSource baseRemoteDataSource = RemoteDataSource();
  BaseWeatherRepository baseWeatherRepository = WeatherRepository(baseRemoteDataSource);
  Weather weather = await GetWeatherByCountryName(baseWeatherRepository).execute('Gaza');
  print('${weather.cityName} + ${weather.description} + ${weather.id}');
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(),
    );
  }
}
