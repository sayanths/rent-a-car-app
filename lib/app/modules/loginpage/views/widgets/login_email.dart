import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/constants/fonts/fonts.dart';
import 'package:carzz/app/constants/widgets/custom_size/custom_size.dart';
import 'package:carzz/app/modules/loginpage/controllers/loginpage_controller.dart';
import 'package:carzz/app/modules/loginpage/views/forgotpassword_view.dart';
import 'package:carzz/app/modules/loginpage/views/widgets/textfield.dart';
import 'package:carzz/app/modules/phonelogin/views/phonelogin_view.dart';
import 'package:carzz/app/modules/signup/views/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class LoginEmailBox extends StatelessWidget {
  const LoginEmailBox({
    Key? key,
    required this.size,
    required this.loginController,
  }) : super(key: key);

  final Size size;
  final LoginpageController loginController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 1.5,
      width: size.width / 1.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white10,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Form(
          key: loginController.loginKey,
          child: Column(
            children: [
              height50,
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Login now",
                    style: gfontsubtitlefont(cl: white, sz: 22),
                  )),
              height10,
              CustomTextField(
                obsureText: false,
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter valid email';
                  }
                  return null;
                },
                controller: loginController.emailController,
                keyboard: TextInputType.emailAddress,
                size: size,
                icon: Icons.email,
                title: '  enter email',
              ),
              SizedBox(
                height: size.height / 25,
              ),
              CustomTextField(
                obsureText: true,
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter valid password';
                  }
                  return null;
                },
                controller: loginController.passwordController,
                keyboard: TextInputType.number,
                size: size,
                icon: Icons.password,
                title: '  enter password',
              ),
              SizedBox(
                height: size.height / 25,
              ),
              SizedBox(
                width: size.width / 2,
                child: ElevatedButton(
                  onPressed: () {
                    loginController.onLoginButtonPress();
                    // loginController.loginApi();
                  },
                  child: Text("Log in"),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 0, 20, 238),
                    shape: StadiumBorder(),
                  ),
                ),
                //loginController.isLoadig

                // ?CupertinoActivityIndicator(color: white,radius: 20,)
                // :
              ),
              height10,
              Row(
                children: [
                  Text(
                    "Forgot password ? ",
                    style: gfontsubtitlefont(cl: white),
                  ),
                  InkWell(
                      onTap: () =>
                          Get.to(() => ForgotpasswordView()),
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
                    "Don't have an account ? ",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.network(
                      "https://res.cloudinary.com/sayanth/image/upload/v1662220924/zara%27s%20shopping%20app/zara%20shopping/google_vnwqmg.png",
                      height: 50,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => PhoneloginView());
                    },
                    child: Image.network(
                      "https://res.cloudinary.com/sayanth/image/upload/v1663998187/toppng.com-registration-and-login-screen-mobile-phone-registration-smartphone-icon-black-980x980_cqgduv.png",
                      height: 55,
                      color: white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}