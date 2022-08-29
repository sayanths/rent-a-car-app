import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/constants/fonts/fonts.dart';
import 'package:carzz/app/constants/widgets/custom_size/custom_size.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Scaffold(
        backgroundColor: black,
        body: Container(
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
          child: ListView(
            children: [
              height30,
              Container(
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
                  )),
              height30,
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    color: white,
                  ),
                  Text(
                    "Kannur , kerala,India",
                    style: Lato(cl: white, sz: 15),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "Latest",
                  style: Lato(cl: white, sz: 30, fw: FontWeight.bold),
                ),
              ),
              LimitedBox(
                maxHeight: 300,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomGlassContainer();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomGlassContainer extends StatelessWidget {
  const CustomGlassContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 180,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 18, 114, 47).withGreen(6),
                Colors.white10,
                Colors.white10,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://www.pngall.com/wp-content/uploads/5/Lamborghini-Aventador-PNG-File-Download-Free.png",
              ),
              Text(
                "Doge Charger",
                style:
                    gfontsubtitlefont(cl: white, fw: FontWeight.bold, sz: 20),
              ),
            ],
          ),
        ),
        Row(
          children: [],
        ),
      ],
    );
  }
}
