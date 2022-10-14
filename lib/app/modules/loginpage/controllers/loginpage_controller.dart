import 'dart:developer';

import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/modules/bottomnavbar/views/bottomnavbar_view.dart';
import 'package:carzz/app/modules/home/views/home_view.dart';
import 'package:carzz/app/modules/loginpage/api_service/api_service.dart';
import 'package:carzz/app/modules/loginpage/model/login_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

enum PagesSwitch { emailLogin, numberLogin }

class LoginpageController extends GetxController {

  bool isLoadig = false;
  final loginKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  loginApi() async {
    isLoadig = true;
    update();
    late final email = emailController.text;
    late final password = passwordController.text;
    final model = LoginModel(
      email: email,
      password: password,
    );

    LoginResponse? response = await Api().loginUser(model);

    if (response != null) {
      hideIsloading();
      log(response.token.toString());
      if (response.status!) {
        Get.offAll(() => BottomnavbarView());
      } else {
        print(response.message.toString());
      }
    } else {
      return Get.snackbar('Not found!!', 'The user not found',
          colorText: white, duration: Duration(seconds: 2));
    }
  }

  hideIsloading() {
    isLoadig = true;
    update();
  }

  onLoginButtonPress() {
    if (loginKey.currentState!.validate()) {
      return loginApi();
    }
  }
}
