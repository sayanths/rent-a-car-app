import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function function;
  final String title;
  const CustomElevatedButton({
    Key? key,
    required this.size,
    required this.function,
    required this.title,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width / 2,
      child: ElevatedButton(
        onPressed: function(),
        child: Text(title),
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 0, 20, 238),
          shape: StadiumBorder(),
        ),
      ),
    );
  }
}
