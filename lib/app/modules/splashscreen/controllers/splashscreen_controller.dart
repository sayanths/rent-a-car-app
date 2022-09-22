import 'dart:async';

import 'package:carzz/app/modules/loginpage/views/loginpage_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SplashscreenController extends GetxController {
  bool a = false;
  late Widget page;

    double fontSize = 2;
  double containerSize = 1.5;
  double textOpacity = 0.0;
  double containerOpacity = 0.0;

  late AnimationController _controller;
  late Animation<double> animation1;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // Timer(Duration(milliseconds: 7000), () {
    //   a = !a;
    //   update();
    // });
    Timer(Duration(milliseconds: 2000), () {
      Get.offAll(() => LoginpageView());
      update();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
