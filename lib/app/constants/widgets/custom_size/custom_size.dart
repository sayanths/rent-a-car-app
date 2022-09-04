import 'package:carzz/app/modules/full_screen/views/full_screen_view.dart';
import 'package:carzz/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../colors/colors.dart';
import '../../fonts/fonts.dart';

const height30 = SizedBox(
  height: 30,
);
const height10 = SizedBox(
  height: 10,
);
const height50 = SizedBox(
  height: 50,
);
const width15 = SizedBox(
  height: 15,
);

class CustomGlassContainer extends StatelessWidget {
  final CartLisr data;
  const CustomGlassContainer({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => FullScreenView()),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 160,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(26, 0, 75, 29).withBlue(1),
                  Color.fromARGB(26, 0, 70, 75).withOpacity(0.5),
                  Color.fromARGB(26, 0, 33, 70).withOpacity(0.8),
                  Color.fromARGB(26, 0, 75, 29).withGreen(1),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  data.image,
                  fit: BoxFit.cover,
                ),
                Text(
                  (data.name),
                  style:
                      gfontsubtitlefont(cl: white, fw: FontWeight.bold, sz: 17),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeadingsInNavBarScreen extends StatelessWidget {
  final String title;
  const HeadingsInNavBarScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Text(
        title,
        style: Lato(
          cl: white,
          fw: FontWeight.bold,
          sz: 30,
        ),
      ),
    );
  }
}
