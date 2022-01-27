import 'package:get/get.dart';
import 'package:weather_app/Dio/ApiClient.dart';
import 'package:weather_app/Model/weather_model.dart';
import 'package:weather_app/Service/WeatherService.dart';
import 'package:weather_app/Utils/Constant.dart';

class WeatherController extends GetxController {
  ApiRequest api = ApiRequest();
  RxInt index = 0.obs;
  WeatherModel weatherModel = WeatherModel();
  RxBool isLoading = false.obs;
  late Rx<WeatherModel> weather = WeatherModel().obs;

  @override
  void onInit() {
    super.onInit();
    var lang = Get.locale.toString();
    getCurrentWeather("DaNang", lang);
  }

  void changeIndex(int i) {
    index.value = i;
    update();
  }

  Future<void> getCurrentWeather(String city, String lang) async {
    isLoading.value = true;
    String key = Constant().KEY;
    await WeatherService()
        .getCurrentWeather("weather?q=$city&appid=$key&units=metric&lang=$lang")
        .then((value) => {
              weatherModel = value,
              isLoading.value = false,
              weather.value = value,
              update(),
            })
        .catchError((error) => {
              printError(info: "Error $error"),
              isLoading.value = false,
            });
    return;
  }

  void changeLoading(key, value) {
    key.value = value;
  }
}
