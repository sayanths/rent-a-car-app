import 'package:flutter/material.dart';

import '../../../../constants/colors/colors.dart';

// Widget customContainer(Widget child) {
//   return 
// }
class CustomContainer extends StatelessWidget {
  Widget child;
   CustomContainer({Key? key,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    height: double.infinity,
    width: double.infinity,
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
}