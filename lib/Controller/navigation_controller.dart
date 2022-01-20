import 'package:get/get.dart';

class NavigationController extends GetxController {
  RxInt index = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void changeIndex(int i) {
    index.value = i;
    update();
  }
}
