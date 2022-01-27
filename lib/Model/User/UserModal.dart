class UserModel {
  String? username;
  String? password ;

  UserModel({this.username, this.password});

  UserModel.fromJson(Map<String, dynamic> json)
      : username = json["username"],
        password = json["password"];

  Map<String, dynamic> toJson() => {"username": username, "password": password};
}
