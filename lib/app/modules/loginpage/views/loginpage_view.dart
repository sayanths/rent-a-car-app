import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/constants/fonts/fonts.dart';
import 'package:carzz/app/constants/widgets/custom_size/custom_size.dart';
import 'package:carzz/app/modules/home/views/widget/bg_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/loginpage_controller.dart';
import 'widgets/forgot_pas.dart';
import 'widgets/textfield.dart';

class LoginpageView extends GetView<LoginpageController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: customContainer(
        SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: gfontsubtitlefont(cl: white, sz: 40),
              ),
              height50,
              Container(
                height: size.height / 2,
                width: size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white10,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Mobile Number",
                            style: gfontsubtitlefont(cl: white, sz: 22),
                          )),
                      height30,
                      CustomTextField(
                        keyboard: TextInputType.number,
                        size: size,
                        icon: Icons.phone,
                        title: 'Please enter number',
                      ),
                      height30,
                      SizedBox(
                        width: size.width / 2,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Log in"),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 0, 20, 238),
                            shape: StadiumBorder(),
                          ),
                        ),
                      ),
                      ForgotPasswordAndCreateAccount(
                          function: () {},
                          title: 'Forgot password ? ',
                          subTitle: ' click here'),
                      ForgotPasswordAndCreateAccount(
                          function: () {},
                          title: "Don't have an account ? ",
                          subTitle: ' create'),
                      height30,
                      InkWell(
                        onTap: () {},
                        child: Image.network(
                          "https://res.cloudinary.com/sayanth/image/upload/v1662220924/zara%27s%20shopping%20app/zara%20shopping/google_vnwqmg.png",
                          height: 50,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
