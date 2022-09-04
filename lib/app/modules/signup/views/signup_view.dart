import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/constants/fonts/fonts.dart';
import 'package:carzz/app/constants/widgets/custom_size/custom_size.dart';
import 'package:carzz/app/modules/bottomnavbar/views/bottomnavbar_view.dart';
import 'package:carzz/app/modules/home/views/widget/bg_color.dart';
import 'package:carzz/app/modules/loginpage/views/widgets/glass_container.dart';
import 'package:carzz/app/modules/loginpage/views/widgets/textfield.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: customContainer(
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                height50,
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: white,
                          )),
                    ),
                    Text(
                      "Create an Account",
                      style: gfontsubtitlefont(
                        cl: white,
                        sz: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                height50,
                LoginGlassContainer(
                  size: size,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomTextField(
                          size: size,
                          icon: Icons.person,
                          title: " Please enter the user name",
                          keyboard: TextInputType.name),
                      CustomTextField(
                          size: size,
                          icon: Icons.call,
                          title: " Please enter the number",
                          keyboard: TextInputType.name),
                      CustomTextField(
                          size: size,
                          icon: Icons.password,
                          title: " Please enter the password",
                          keyboard: TextInputType.name),
                      CustomTextField(
                          size: size,
                          icon: Icons.password_outlined,
                          title: " conform password",
                          keyboard: TextInputType.name),
                      SizedBox(
                        width: size.width / 1.5,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.offAll(
                              () => BottomnavbarView(),
                              transition: Transition.circularReveal,
                            );
                          },
                          child: Text("Create"),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 55, 0, 255),
                            shape: StadiumBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
