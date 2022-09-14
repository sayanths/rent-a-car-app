import 'dart:convert';

import 'package:carzz/app/data/signup_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

class SignupController extends GetxController {
  SignupController() {
    // putUser(requestModel);
  }

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final numberController = TextEditingController();
  final passwordController = TextEditingController();
  final confromPasswordController = TextEditingController();

  String baseUrl = 'http://localhost:3000/account/signup';
  
}
