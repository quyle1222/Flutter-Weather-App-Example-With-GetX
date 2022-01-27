import 'package:weather_app/Dio/ApiClient.dart';
import 'package:weather_app/Model/weather_model.dart';

class WeatherService {
  ApiRequest api = new ApiRequest();

  Future<WeatherModel> getCurrentWeather(String url) async {
    var response = await api.getData(url);
    return WeatherModel.fromJson(response!);
  }
}
