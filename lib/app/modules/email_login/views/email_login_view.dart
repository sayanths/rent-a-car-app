import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/colors/colors.dart';
import '../../../constants/fonts/fonts.dart';
import '../../../constants/widgets/custom_size/custom_size.dart';
import '../../bottomnavbar/views/bottomnavbar_view.dart';
import '../../loginpage/views/forgotpassword_view.dart';
import '../../loginpage/views/widgets/textfield.dart';
import '../../signup/views/signup_view.dart';
import '../controllers/email_login_controller.dart';

class EmailLoginView extends GetView<EmailLoginController> {
  @override
  Widget build(BuildContext context) {
    final emailController = Get.put(EmailLoginController());
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 1.5,
      width: size.width / 1.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white10,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            height50,
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "     Mobile Number",
                  style: gfontsubtitlefont(cl: white, sz: 22),
                )),
            height30,
            CustomTextField(
              obsureText: false,
              controller: emailController.emailController,
              keyboard: TextInputType.number,
              size: size,
              icon: Icons.email,
              title: '   Enter email',
            ),
            height30,
            SizedBox(
              width: size.width / 2,
              child: ElevatedButton(
                onPressed: () {
                  Get.off(() => BottomnavbarView());
                },
                child: Text("Log in"),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 0, 20, 238),
                  shape: StadiumBorder(),
                ),
              ),
            ),
            height10,
            Row(
              children: [
                Text(
                  "Forgot password? ",
                  style: gfontsubtitlefont(cl: white),
                ),
                InkWell(
                    onTap: () => Get.to(() => ForgotpasswordView()),
                    child: Text(
                      " Click here",
                      style: gfontsubtitlefont(
                          cl: Color.fromARGB(255, 0, 255, 255)),
                    )),
              ],
            ),
            height10,
            Row(
              children: [
                Text(
                  "Don't have an account? ",
                  style: gfontsubtitlefont(cl: white),
                ),
                InkWell(
                    onTap: () => Get.to(() => SignupView(),
                        transition: Transition.upToDown),
                    child: Text(
                      " Click here",
                      style: gfontsubtitlefont(
                          cl: Color.fromARGB(255, 0, 255, 255)),
                    )),
              ],
            ),
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
    );
  }
}
