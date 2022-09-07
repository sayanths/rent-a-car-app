import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

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
class FullScreenDetails extends StatelessWidget {
  final String title;
  final String icon;
  const FullScreenDetails({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Iconify(
              icon,
              color: white,
            ),
          ),
          Text(
            title,
            style: gfontsubtitlefont(cl: white),
          ),
        ],
      ),
    );
  }
}
