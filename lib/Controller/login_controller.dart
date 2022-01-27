import 'package:get/get.dart';
import 'package:weather_app/Model/ApiResponse.dart';
import 'package:weather_app/Model/User/UserModal.dart';
import 'package:weather_app/Service/UserService.dart';

class LoginController extends GetxController {
  RxString username = "".obs;
  RxString password = "".obs;
  RxBool loading = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> handleLogin() async {
    ApiResponse response;
    UserModel userModel =
        UserModel(username: username.toString(), password: password.toString());
    await UserService()
        .login(userModel)
        .then((value) => {
              response = value,
              if (response.success == true) {print("success")},
              print("sucess ${response.success.toString()}"),
              print("message ${response.message}"),
              print("data ${response.data}"),
            })
        .catchError((error) => {});
    return;
  }
}
