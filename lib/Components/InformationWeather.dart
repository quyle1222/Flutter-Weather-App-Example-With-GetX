import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:weather_app/Controller/weather_controller.dart';
import 'package:get/get.dart';

class InformationWeather extends GetWidget {
  IconData icon;
  String text;
  InformationWeather(this.icon, this.text, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Icon(icon), Text(text)],
    );
  }
}
