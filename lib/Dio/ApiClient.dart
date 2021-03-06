import 'package:dio/dio.dart';

class ApiRequest {
  Dio dio = Dio(BaseOptions(
    baseUrl: "http://139.180.128.230:8080/ofbizinterfacetest/api/v1",
    connectTimeout: 5000,
    receiveTimeout: 5000,
    headers: {"content-Type": "application/json"},
  ));

  Future<Map<String, dynamic>?> getData(String url) async {
    try {
      var response = await dio.get(url);
      if (response.statusCode == 200) {
        return response.data;
      }
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  Future<Map<String, dynamic>?> postData(String url, var data) async {
    try {
      var response = await dio.post(url, data: data);
      if (response.statusCode == 200) {
        return response.data;
      }
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }
}
