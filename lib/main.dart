import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:weather_app/View/navigation.dart';
import 'package:weather_app/generated/l10n.dart';
import "package:flutter_localizations/flutter_localizations.dart";

void main() {
  runApp(GetMaterialApp(
    home: Navigation(),
    debugShowCheckedModeBanner: false,
    localizationsDelegates: const [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: S.delegate.supportedLocales,
  ));
}
