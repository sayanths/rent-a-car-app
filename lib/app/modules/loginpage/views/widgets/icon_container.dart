import 'package:flutter/material.dart';

import '../../../../constants/colors/colors.dart';

class CustomLoginContainer extends StatelessWidget {
  final IconData icon;
  const CustomLoginContainer({
    Key? key,
    required this.size,
    required this.icon,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
       height: size.height / 11,
      width: size.width / 1.5,
      decoration: BoxDecoration(
        color: black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      child: Icon(
        icon,
        color: white,
      ),
    );
  }
}
