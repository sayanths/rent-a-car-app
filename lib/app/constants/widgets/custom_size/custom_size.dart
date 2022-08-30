import 'package:flutter/material.dart';

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

class CustomGlassContainer extends StatelessWidget {
  const CustomGlassContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                "https://www.pngall.com/wp-content/uploads/5/Lamborghini-Aventador-PNG-File-Download-Free.png",
              ),
              Text(
                "Lamporgini Aventure",
                style:
                    gfontsubtitlefont(cl: white, fw: FontWeight.bold, sz: 17),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
