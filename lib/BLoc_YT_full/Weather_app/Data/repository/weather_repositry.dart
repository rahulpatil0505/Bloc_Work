// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:blockdemoapi/BLoc_YT_full/Weather_app/Data/provider/weather_provider.dart';

import '../model/weather_model.dart';

class WeatherRepository {
  final WeatherDataProvider weatherDataProvider;
  WeatherRepository(
    this.weatherDataProvider,
  );
  Future<WeatherModel> getCurrentWeather() async {
    try {
      String cityName = 'London';

      final weatherData = await weatherDataProvider.getCurrentWeather(cityName);
      final data = jsonDecode(weatherData);

      if (data['cod'] != '200') {
        throw 'An unexpected error occurred';
      }
      print("check ${data}");
      return WeatherModel.fromJson(data);
    } catch (e) {
      throw e.toString();
    }
  }
}
