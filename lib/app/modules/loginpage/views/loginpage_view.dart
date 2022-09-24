import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/constants/fonts/fonts.dart';
import 'package:carzz/app/constants/widgets/custom_size/custom_size.dart';
import 'package:carzz/app/modules/home/views/widget/bg_color.dart';
import 'package:carzz/app/modules/loginpage/views/forgotpassword_view.dart';
import 'package:carzz/app/modules/loginpage/views/widgets/login_email.dart';
import 'package:carzz/app/modules/phonelogin/views/phonelogin_view.dart';
import 'package:carzz/app/modules/signup/views/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/loginpage_controller.dart';
import 'forgotpassword_view.dart';
import 'widgets/textfield.dart';

class LoginpageView extends GetView<LoginpageController> {
  @override
  Widget build(BuildContext context) {
    PagesSwitch pagesSwitch = PagesSwitch.emailLogin;
    final loginController = Get.put(LoginpageController());
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: CustomContainer(
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height / 23,
                ),
                Text(
                  "Welcome",
                  style: gfontsubtitlefont(cl: white, sz: 40),
                ),
                height50,
                LoginEmailBox(size: size, loginController: loginController),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
