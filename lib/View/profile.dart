import 'package:flutter/material.dart';
import 'package:weather_app/Controller/login_controller.dart';
import 'package:weather_app/Controller/weather_controller.dart';
import 'package:get/get.dart';
import 'package:weather_app/generated/l10n.dart';

class ProfileScreen extends GetWidget {
  @override
  LoginController controller = Get.put(LoginController());
  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = (MediaQuery.of(context).size.width);
    return Scaffold(
        body: GetBuilder<LoginController>(
      builder: (controller) {
        return SafeArea(
          child: Column(
            children: [
              _wellcome(),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: width * 0.9,
                  child: Column(
                    children: [
                      TextFormField(
                          cursorColor: Colors.grey,
                          onChanged: (value) =>
                              controller.username.value = value,
                          decoration: InputDecoration(
                            labelText: S.current.account,
                            labelStyle: const TextStyle(color: Colors.black),
                            hoverColor: Colors.black,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          cursorColor: Colors.grey,
                          onChanged: (value) =>
                              controller.password.value = value,
                          decoration: InputDecoration(
                            labelText: S.current.password,
                            labelStyle: const TextStyle(color: Colors.black),
                            focusColor: Colors.black,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          )),
                      GestureDetector(
                          onTap: () => controller.handleLogin(),
                          child: Container(
                            margin: const EdgeInsets.only(top: 20),
                            width: 200.0,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                border: Border.all(
                                  color: Colors.amber,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                            child: Center(child: Text(S.current.login)),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
      init: LoginController(),
    ));
  }

  Widget _wellcome() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Text(
            S.current.hi,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(S.current.wellcome)
        ],
      ),
    );
  }
}
