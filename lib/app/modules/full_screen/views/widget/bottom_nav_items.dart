import 'package:flutter/material.dart';

import '../../../../constants/colors/colors.dart';
import '../../../../constants/fonts/fonts.dart';

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
    return SizedBox(
      child: ElevatedButton.icon(
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
      ),
    );
  }
}
