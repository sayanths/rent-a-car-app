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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                "Latest",
                style: Lato(cl: white, sz: 30, fw: FontWeight.bold),
              ),
            ),
            LimitedBox(
              maxHeight: 230,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return CustomGlassContainer();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Brands",
                    style: Lato(cl: white, sz: 30, fw: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "view All",
                    style: gfontsubtitlefont(cl: white),
                  ),
                ],
              ),
            ),
            LimitedBox(
              maxHeight: 100,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomBrandLogo();
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Available cars",
                style: gfontsubtitlefont(cl: Colors.white60, sz: 20),
              ),
            ),
            height30,
            Column(
              children: [
                // Stack(
                //   children: [
                LimitedBox(
                  maxHeight: 200,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Available_cars_container(size: size);
                    },
                  ),
                )

                //   ],
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Available_cars_container extends StatelessWidget {
  const Available_cars_container({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 140,
      width: size.width / 1,
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
  const CustomBrandLogo({
    Key? key,
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
              "https://www.freepnglogos.com/uploads/kia-car-logo-png-brand-image-33.png",
            ),
          ),
        ),
      ],
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
          width: 160,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(26, 0, 75, 29).withBlue(1),
                Color.fromARGB(26, 0, 70, 75).withOpacity(0.5),
                Color.fromARGB(26, 0, 33, 70).withOpacity(0.8),
                Color.fromARGB(26, 0, 75, 29).withGreen(1),
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
                "Lamporgini Aventure",
                style:
                    gfontsubtitlefont(cl: white, fw: FontWeight.bold, sz: 17),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
