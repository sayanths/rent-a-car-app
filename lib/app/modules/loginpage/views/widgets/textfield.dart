import 'package:flutter/material.dart';

import '../../../../constants/colors/colors.dart';
import 'icon_container.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType keyboard;
  final IconData icon;
  final String title;
  const CustomTextField({
    Key? key,
    required this.size,
    required this.icon,
    required this.title,
    required this.keyboard,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 13,
      width: size.width / 1.5,
      child: Row(
        children: [
          Expanded(
            child: CustomLoginContainer(
              size: size,
              icon: icon,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: size.height / 13,
              width: size.width / 1.5,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Form(
                child: TextField(
                  keyboardType: keyboard,
                  decoration: InputDecoration(
                    hintText: title,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
