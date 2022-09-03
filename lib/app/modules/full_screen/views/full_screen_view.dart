import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/constants/fonts/fonts.dart';
import 'package:carzz/app/constants/widgets/custom_size/custom_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../home/views/widget/bg_color.dart';
import '../controllers/full_screen_controller.dart';

class FullScreenView extends GetView<FullScreenController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: black,
        body: customContainer(
          Column(
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
                    "Lamporgini",
                    style: Lato(cl: white, fw: FontWeight.bold, sz: 30),
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: size.height / 6,
          width: size.width,
          decoration: BoxDecoration(
            color: white,
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
                    title: 'call',
                    icon: Icons.message,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FullViewCallAndChat extends StatelessWidget {
  final Function function;
  final String title;
  final IconData icon;
  final Color colorx;
  FullViewCallAndChat({
    Key? key,
    required this.function,
    required this.title,
    required this.icon,
    required this.colorx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: function(),
      icon: Icon(
        icon,
        color: white,
      ),
      label: Text(
        title,
        style: gfontsubtitlefont(cl: white),
      ),
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        
      ),
    );
  }
}
