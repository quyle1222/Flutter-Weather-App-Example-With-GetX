import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/Controller/navigation_controller.dart';
import 'package:weather_app/Controller/weather_controller.dart';
import 'package:get/get.dart';
import 'package:weather_app/Components/InformationWeather.dart';
import 'package:weather_app/generated/l10n.dart';

class HomeScreen extends GetWidget {
  @override
  WeatherController controller = Get.put(WeatherController());
  NavigationController navigationController = Get.find<NavigationController>();
  HomeScreen({Key? key}) : super(key: key);

  _handleChangeLanguage() {
    var tempLocate = Get.locale;
    Locale locate = Locale("vi");
    if (tempLocate == locate) {
      locate = Locale("en");
    }
    Get.updateLocale(locate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<WeatherController>(
      builder: (controller) {
        return SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          S
                              .of(context)
                              .city(controller.weatherModel.name ?? ""),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Text(
                          controller.weatherModel.main != null
                              ? "${controller.weatherModel.main!.temp!.ceil()}ºC"
                              : "",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 50),
                        ),
                        Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              border: Border.all(
                                color: Colors.amber,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Center(
                            child: Text(controller.weatherModel.weather !=
                                        null &&
                                    controller.weatherModel.weather!.isNotEmpty
                                ? controller
                                    .weatherModel.weather![0].description
                                    .toString()
                                    .toUpperCase()
                                : ""),
                          ),
                        ),
                      ],
                    ),
                    const Text('ẢNH Ở ĐÂY')
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 100, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InformationWeather(
                        MaterialCommunityIcons.weather_sunset_down,
                        "0.0553 mBar"),
                    InformationWeather(
                        MaterialCommunityIcons.water_percent, "13%"),
                    InformationWeather(
                        MaterialCommunityIcons.weather_windy_variant, "9km/h")
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => {_handleChangeLanguage()},
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: 200.0,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(
                        color: Colors.amber,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Center(
                      child: Text(
                    S.of(context).language,
                  )),
                ),
              )
            ],
          ),
        );
      },
      init: WeatherController(),
    ));
  }
}
