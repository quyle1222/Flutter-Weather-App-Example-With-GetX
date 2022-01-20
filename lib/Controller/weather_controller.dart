import 'package:get/get.dart';
import 'package:weather_app/Dio/ApiClient.dart';
import 'package:weather_app/Model/weather_model.dart';
import 'package:weather_app/Service/WeatherService.dart';
import 'package:weather_app/Utils/Constant.dart';

class WeatherController extends GetxController {
  ApiRequest api = ApiRequest();
  RxInt index = 0.obs;
  WeatherModel weatherModel = WeatherModel();

  @override
  void onInit() {
    super.onInit();
    getCurrentWeather("DaNang");
  }

  void changeIndex(int i) {
    index.value = i;
    update();
  }

  void getCurrentWeather(String city) {
    String key = Constant().KEY;
    WeatherService()
        .getCurrentWeather("weather?q=$city&appid=$key&units=metric&lang=vi")
        .then((value) => {weatherModel = value, update()})
        .catchError((error) => {printError(info: "Error $error")});
  }
}
