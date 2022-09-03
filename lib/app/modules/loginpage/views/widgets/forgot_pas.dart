import 'package:flutter/material.dart';

import '../../../../constants/colors/colors.dart';
import '../../../../constants/fonts/fonts.dart';
import '../../../../constants/widgets/custom_size/custom_size.dart';

class ForgotPasswordAndCreateAccount extends StatelessWidget {
  final Function function;
  final String title;
  final String subTitle;
  const ForgotPasswordAndCreateAccount({
    Key? key,
    required this.function,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            title,
            style: gfontsubtitlefont(cl: white),
          ),
          width15,
          GestureDetector(
            onTap: function(),
            child: Text(subTitle,
                style: gfontsubtitlefont(cl: Color.fromARGB(255, 0, 140, 255))),
          ),
        ],
      ),
    );
  }
}