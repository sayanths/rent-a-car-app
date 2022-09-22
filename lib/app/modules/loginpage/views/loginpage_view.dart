import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/constants/fonts/fonts.dart';
import 'package:carzz/app/constants/widgets/custom_size/custom_size.dart';
import 'package:carzz/app/modules/home/views/widget/bg_color.dart';
import 'package:carzz/app/modules/loginpage/views/forgotpassword_view.dart';
import 'package:carzz/app/modules/signup/views/signup_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/loginpage_controller.dart';
import 'forgotpassword_view.dart';
import 'widgets/textfield.dart';

class LoginpageView extends GetView<LoginpageController> {
  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LoginpageController());
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: customContainer(
        SafeArea(
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
                Container(
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
                              } else if (value.length <= 9) {
                                return 'please enter correct email';
                              }
                              return null;
                            },
                            controller: loginController.emailController,
                            keyboard: TextInputType.emailAddress,
                            size: size,
                            icon: Icons.phone,
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
                            child: loginController.isLoadig
                            
                            ?CupertinoActivityIndicator(color: white,radius: 20,)
                            : ElevatedButton(
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
                                onTap: () {},
                                child: Image.network(
                                  "https://res.cloudinary.com/sayanth/image/upload/v1662220924/zara%27s%20shopping%20app/zara%20shopping/google_vnwqmg.png",
                                  height: 50,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
