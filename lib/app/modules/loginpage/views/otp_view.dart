import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/constants/fonts/fonts.dart';
import 'package:carzz/app/constants/widgets/custom_size/custom_size.dart';
import 'package:carzz/app/modules/bottomnavbar/views/bottomnavbar_view.dart';
import 'package:carzz/app/modules/home/views/widget/bg_color.dart';
import 'package:carzz/app/modules/loginpage/views/widgets/otp_typing.dart';
import 'package:carzz/app/modules/signup/views/signup_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OtpView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: CustomContainer(
         child: SingleChildScrollView(
            child: Column(
              children: [
                height30,
                CustomBackArrowWithTitle(
                  title: 'Verification code',
                ),
                height50,
                Text(
                  "We have  sent the code verification to",
                  style: gfontsubtitlefont(
                    cl: grey,
                  ),
                ),
                height10,
                Text(
                  "+91 *********",
                  style: gfontsubtitlefont(cl: white),
                ),
                height30,
                Form(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OtpTypingContainer(),
                      OtpTypingContainer(),
                      OtpTypingContainer(),
                      OtpTypingContainer(),
                    ],
                  ),
                ),
                height50,
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => BottomnavbarView());
                  },
                  child: Text("Sumbit otp"),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 0, 20, 238),
                    shape: StadiumBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
