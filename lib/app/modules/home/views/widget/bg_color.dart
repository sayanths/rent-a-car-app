import 'package:flutter/material.dart';

import '../../../../constants/colors/colors.dart';

Widget customContainer(Widget child) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        end: Alignment.bottomCenter,
        begin: Alignment.topLeft,
        colors: [
          bgColor1,
          bgColor2,
          bgColor1,
        ],
      ),
    ),
    child: child,
  );
}
