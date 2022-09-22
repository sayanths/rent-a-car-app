import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginpageController extends GetxController {
  final loginKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  onLoginButtonPress() {
    if (loginKey.currentState!.validate()) {
      return;
    }
  }
}
