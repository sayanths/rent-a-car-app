import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/constants/fonts/fonts.dart';
import 'package:carzz/app/constants/widgets/custom_size/custom_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../home/views/widget/bg_color.dart';
import '../controllers/full_screen_controller.dart';
import 'widget/bottom_nav_items.dart';

class FullScreenView extends GetView<FullScreenController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: black,
        body: customContainer(
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: white,
                        )),
                    Spacer(),
                    Text(
                      "Lamborgini",
                      style: Lato(cl: white, fw: FontWeight.bold, sz: 30),
                    ),
                    Spacer(),
                  ],
                ),
                height30,
                Image.network(
                    "https://www.supercars.net/blog/wp-content/uploads/2022/01/lamborghini-aventador-lp-780-4-ultimae.jpg"),
                height30,
                Text(
                  "Details",
                  style:
                      gfontsubtitlefont(cl: white, sz: 25, fw: FontWeight.bold),
                ),
                height10,
                Text(
                  "Its Lamporgini Aventure in 2014.vechile is in good condition and so scratch .All papers are clear and insurance upto january 30 2025. km run upto 20,000.",
                  style: Lato(
                    cl: grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: size.height / 5,
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                bgColor1,
                bgColor2,
                bgColor1,
              ],
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Column(
            children: [
              height10,
              height10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FullViewCallAndChat(
                    colorx: darkBlue,
                    function: () {},
                    title: 'Chat',
                    icon: Icons.message,
                  ),
                  FullViewCallAndChat(
                    colorx: darkBlue,
                    function: () {},
                    title: 'call',
                    icon: Icons.call,
                  ),
                ],
              ),
              height10,
              height10,
              Container(
                height: size.height / 20,
                width: size.width / 1.2,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 167, 250),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    "Book Now",
                    style: gfontsubtitlefont(
                      cl: white,
                      fw: FontWeight.bold,
                    ),
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
