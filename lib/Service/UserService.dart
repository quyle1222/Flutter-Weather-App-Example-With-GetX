import 'package:weather_app/Dio/ApiClient.dart';
import 'package:weather_app/Model/ApiResponse.dart';
import 'package:weather_app/Model/User/UserModal.dart';

class UserService {
  ApiRequest api = new ApiRequest();

  Future<ApiResponse> login(UserModel data) async {
    var response = await api.postData("/shipper/login", data);
    ApiResponse result = ApiResponse.fromJson(response!);
    return result;
  }
}
