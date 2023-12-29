part of 'weather_bloc.dart';

sealed class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

final class WeatherInitial extends WeatherState {}

final class WeatherSucess extends WeatherState {
  final WeatherModel weatherModel;

  WeatherSucess({required this.weatherModel});
}

final class WeatherFailer extends WeatherState {
  final String error;

  WeatherFailer(this.error);
}

final class WeatherLoading extends WeatherState {}
