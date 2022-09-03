import 'package:flutter/material.dart';

import '../../../../constants/colors/colors.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height / 18,
        width: size.width / 2,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 44, 40, 40),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(color: white),
              ),
              Icon(
                Icons.search,
                color: white,
              ),
            ],
          ),
        ));
  }
}