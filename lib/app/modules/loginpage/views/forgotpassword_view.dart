import 'package:carzz/app/modules/loginpage/views/otp_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/colors/colors.dart';
import '../../../constants/fonts/fonts.dart';
import '../../../constants/widgets/custom_size/custom_size.dart';
import '../../home/views/widget/bg_color.dart';
import '../../signup/views/signup_view.dart';

class ForgotpasswordView extends GetView {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: CustomContainer(
         child: Column(
            children: [
              height50,
              CustomBackArrowWithTitle(
                title: 'Forgot Password',
              ),
              height30,
              Text(
                "Please enter yourregistered mobile number",
                style: gfontsubtitlefont(cl: grey),
              ),
              height50,
              Container(
                height: size.height / 17,
                width: size.width / 1.3,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 197, 194, 194),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: '  Enter your number',
                    border: InputBorder.none,
                  ),
                ),
              ),
              height30,
              ElevatedButton(
                onPressed: () {
                  Get.off(() => OtpView());
                },
                child: Text(
                  "Sent otp",
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 52, 0, 196),
                  shape: StadiumBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
