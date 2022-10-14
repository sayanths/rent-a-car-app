import 'package:carzz/app/modules/home/views/home_view.dart';
import 'package:carzz/app/modules/loginpage/views/otp_view.dart';
import 'package:carzz/app/modules/signup/api_service/api_service.dart';
import 'package:carzz/app/modules/signup/model/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final signUpKey = GlobalKey<FormState>();

  onSignUpButtonPress() {
    if (signUpKey.currentState!.validate()) {
      return signUpSubmit();
    }
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confromPasswordController = TextEditingController();

  Future<void> signUpSubmit() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final data = SignUpModel(email: email, password: password);
    final response = await ApiService().signUpUser(data);
    if (response != null) {
      Get.to(
        () => OtpView(),
      );
    } else {
      Get.snackbar('Full field required', 'Please full fill the fields');
    }
  }
}
