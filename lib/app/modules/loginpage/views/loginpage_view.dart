<<<<<<< HEAD
import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/constants/fonts/fonts.dart';
import 'package:carzz/app/constants/widgets/custom_size/custom_size.dart';
import 'package:carzz/app/modules/home/views/widget/bg_color.dart';
=======
>>>>>>> d05e25ab358ce0133c0f7a7ba2d715060498a199
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/loginpage_controller.dart';

class LoginpageView extends GetView<LoginpageController> {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
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
              height30,
              Container(
                height: size.height / 2,
                width: size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: white,
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
                            style: gfontsubtitlefont(),
                          )),
                      height10,
                      Container(
                        height: size.height / 13,
                        width: size.width / 1.5,
                        child: Row(
                          children: [
                            Expanded(
                              child: CustomLoginContainer(size: size),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                color: black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
=======
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginpageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LoginpageView is working',
          style: TextStyle(fontSize: 20),
>>>>>>> d05e25ab358ce0133c0f7a7ba2d715060498a199
        ),
      ),
    );
  }
}
<<<<<<< HEAD

class CustomLoginContainer extends StatelessWidget {
  const CustomLoginContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 13,
      width: size.width / 1.5,
      decoration: BoxDecoration(
        color: red,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomLeft: Radius.circular(15),
        ),
      ),
      child: Icon(Icons.phone),
    );
  }
}
=======
>>>>>>> d05e25ab358ce0133c0f7a7ba2d715060498a199
