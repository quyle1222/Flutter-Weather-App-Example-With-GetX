class ApiResponse {
  bool? success;
  String? message;
  String? errorCode;
  var data;

  ApiResponse({this.success, this.message, this.errorCode, this.data});

  ApiResponse.fromJson(Map<String, dynamic> json)
      : success = json["success"],
        message = json["message"],
        errorCode = json["errorCode"],
        data = json["data"];
}
