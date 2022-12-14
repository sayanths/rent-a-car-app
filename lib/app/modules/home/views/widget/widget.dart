import 'package:flutter/material.dart';

import '../../../../constants/colors/colors.dart';
import '../../../../constants/fonts/fonts.dart';

class AvailableCarsContainer extends StatelessWidget {
  const AvailableCarsContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                "https://www.pngall.com/wp-content/uploads/5/Lamborghini-Aventador-PNG-File-Download-Free.png",
                height: 100,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      "Porsche Boxster\n",
                      style: gfontsubtitlefont(fw: FontWeight.bold, sz: 20),
                    ),
                    Text("2014",
                        style: gfontsubtitlefont(
                            fw: FontWeight.w400,
                            sz: 20,
                            cl: Color.fromARGB(255, 93, 83, 83)))
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: '1000/',
                        style: gfontsubtitlefont(fw: FontWeight.bold, sz: 20),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'hr',
                              style: TextStyle(
                                  color: grey, fontWeight: FontWeight.w100)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 40,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: blue,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                  ),
                  child: Center(
                    child: Text(
                      "Details",
                      style: gfontsubtitlefont(
                          cl: white, fw: FontWeight.bold, sz: 22),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomBrandLogo extends StatelessWidget {
  final String data;
  const CustomBrandLogo({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(7),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              data,
            ),
          ),
        ),
      ],
    );
  }
}
