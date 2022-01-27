import 'package:get/get.dart';

class LoginController extends GetxController {
  RxString username = "".obs;
  RxString password = "".obs;
  RxBool loading = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  handleLogin() {
    loading.value = true;
    update([loading], true);
  }
}
