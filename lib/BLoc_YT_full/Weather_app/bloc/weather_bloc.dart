import 'package:bloc/bloc.dart';
import 'package:blockdemoapi/BLoc_YT_full/Weather_app/Data/model/weather_model.dart';
import 'package:blockdemoapi/BLoc_YT_full/Weather_app/Data/repository/weather_repositry.dart';
import 'package:equatable/equatable.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;
  WeatherBloc(this.weatherRepository) : super(WeatherInitial()) {
    on<WeatherFeathed>(_getCurrentweather);
  }

  void _getCurrentweather(
    WeatherFeathed event,
    Emitter<WeatherState> emit,
  ) async {
    emit(WeatherLoading());
    try {
      final weather = await weatherRepository.getCurrentWeather();
      emit(WeatherSucess(weatherModel: weather));
    } catch (e) {
      emit(WeatherFailer(e.toString()));
    }
  }
}
