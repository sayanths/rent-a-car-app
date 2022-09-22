import 'package:flutter/material.dart';

import '../../../../constants/colors/colors.dart';
import 'icon_container.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType keyboard;
  final IconData icon;
  final String title;
  final TextEditingController controller;
  final String? Function(String?)? validate;
  final bool obsureText;
  const CustomTextField({
    Key? key,
    required this.size,
    required this.icon,
    required this.title,
    required this.keyboard,
    required this.controller, 
    this.validate, required this.obsureText,
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: TextFormField(
                  obscureText: obsureText,
                    validator:validate ,
                    controller: controller,
                    keyboardType: keyboard,
                    decoration: InputDecoration(
                      
                      hintText: title,
                      border: InputBorder.none,
                    ),
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
