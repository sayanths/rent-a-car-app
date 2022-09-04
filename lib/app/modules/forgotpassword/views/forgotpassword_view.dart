import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/constants/fonts/fonts.dart';
import 'package:carzz/app/constants/widgets/custom_size/custom_size.dart';
import 'package:carzz/app/modules/home/views/widget/bg_color.dart';
import 'package:carzz/app/modules/signup/views/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/forgotpassword_controller.dart';

class ForgotpasswordView extends GetView<ForgotpasswordController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: customContainer(
          Column(
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
                onPressed: () {},
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
