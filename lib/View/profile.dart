import 'package:flutter/material.dart';
import 'package:weather_app/Controller/weather_controller.dart';
import 'package:get/get.dart';
import 'package:weather_app/generated/l10n.dart';

// ignore: must_be_immutable
class ProfileScreen extends GetWidget {
  @override
  WeatherController controller = Get.put(WeatherController());
  ProfileScreen({Key? key}) : super(key: key);

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
                    Container(
                      child: Column(
                        children: [
                          Text(
                            S
                                .of(context)
                                .city(controller.weatherModel.name ?? ""),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          const Text(
                            "18",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 75),
                          ),
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                border: Border.all(
                                  color: Colors.amber,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                            child: const Center(
                              child: Text("Cloudy"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text('ẢNH Ở ĐÂY')
                  ],
                ),
              ),
            ],
          ),
        );
      },
      init: WeatherController(),
    ));
  }
}
