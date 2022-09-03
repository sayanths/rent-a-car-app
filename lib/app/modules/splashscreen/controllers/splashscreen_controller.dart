import 'dart:async';

import 'package:carzz/app/modules/loginpage/views/loginpage_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SplashscreenController extends GetxController {
  bool a = false;
  late Widget page;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Timer(Duration(milliseconds: 7000), () {
      a = !a;
      update();
    });
    Timer(Duration(milliseconds: 2000), () {
      Get.offAll(() => LoginpageView());
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
