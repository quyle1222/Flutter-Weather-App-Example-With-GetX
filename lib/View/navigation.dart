import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:weather_app/Controller/navigation_controller.dart';
import 'package:get/get.dart';
import 'package:weather_app/View/profile.dart';
import 'package:weather_app/View/home.dart';
import 'package:weather_app/generated/l10n.dart';

class Navigation extends GetWidget {
  @override
  NavigationController controller = Get.put(NavigationController());
  Navigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(builder: (controller) {
      return Scaffold(
        body: Obx(() => _getBody()),
        bottomNavigationBar: GetBuilder<NavigationController>(
          builder: (controller) {
            return BottomNavigationBar(
                unselectedItemColor: Colors.black,
                selectedItemColor: Colors.amber,
                currentIndex: controller.index.value,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                onTap: controller.changeIndex,
                items: [
                  _bottomNavigationBarItem(
                    icon: MaterialCommunityIcons.weather_partly_cloudy,
                    label: S.of(context).home,
                  ),
                  _bottomNavigationBarItem(
                    icon: MaterialCommunityIcons.face_profile,
                    label: S.of(context).profile,
                  ),
                ]);
          },
        ),
      );
    });
  }

  _bottomNavigationBarItem({IconData? icon, String? label}) {
    String name = label!.tr;
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: name,
    );
  }

  _getBody() {
    switch (controller.index.value) {
      case 0:
        return HomeScreen();
      case 1:
        return ProfileScreen();
      default:
        return HomeScreen();
    }
  }
}
