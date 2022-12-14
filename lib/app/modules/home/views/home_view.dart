import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/constants/fonts/fonts.dart';
import 'package:carzz/app/constants/widgets/custom_size/custom_size.dart';
import 'package:carzz/app/modules/home/views/widget/widget.dart';
import 'package:carzz/app/modules/view_all/views/view_all_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import '../controllers/home_controller.dart';
import 'widget/search.dart';

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
        child: SafeArea(
          child: ListView(
            children: [
              Search(size: size),
              height10,
              height10,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Iconify(
                      Carbon.location_current,
                      color: white,
                    ),
                    Text(
                      "Kannur,Kerala,India",
                      style: Lato(cl: white),
                    ),
                  ],
                ),
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
                  itemCount: lateestCarList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final data = lateestCarList[index];
                    return CustomGlassContainer(data: data);
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
                    InkWell(
                      onTap: () {
                        Get.to(() => ViewAllView(),
                            transition: Transition.cupertino);
                      },
                      child: Text(
                        "view All",
                        style: gfontsubtitlefont(cl: white),
                      ),
                    ),
                  ],
                ),
              ),
              LimitedBox(
                maxHeight: 100,
                child: ListView.builder(
                    itemCount: logos.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      final data = logos[index];
                      return CustomBrandLogo(data: data);
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
              LimitedBox(
                maxHeight: 200,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return AvailableCarsContainer(size: size);
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

final lateestCarList = [
  CartLisr(
      image:
          "https://res.cloudinary.com/sayanth/image/upload/v1662302974/zara%27s%20shopping%20app/zara%20shopping/kindpng_3333962_mgnqsi.png",
      name: "Audi"),
  CartLisr(
      image:
          "https://res.cloudinary.com/sayanth/image/upload/v1662302972/zara%27s%20shopping%20app/zara%20shopping/kindpng_1750942_rs9f3o.png",
      name: "Sunny"),
  CartLisr(
      image:
          "https://res.cloudinary.com/sayanth/image/upload/v1662302972/zara%27s%20shopping%20app/zara%20shopping/kindpng_1465259_fgbcox.png",
      name: "Porche"),
       CartLisr(
      image:
          "https://res.cloudinary.com/sayanth/image/upload/v1662303349/zara%27s%20shopping%20app/zara%20shopping/kindpng_1055696_w42zc1.png",
      name: "Mustank"),
       CartLisr(
      image:
          "https://res.cloudinary.com/sayanth/image/upload/v1662303348/zara%27s%20shopping%20app/zara%20shopping/kindpng_4789728_v49vxf.png",
      name: "Mini Cooper"),
];

class CartLisr {
  String image;
  String name;
  CartLisr({required this.image, required this.name});
}

final logos = [
  "https://www.freepnglogos.com/uploads/mini-cooper-car-logo-brands-png-images-26.png",
  "https://www.freepnglogos.com/uploads/skoda-car-logo-png-brand-image-32.png",
  "https://www.freepnglogos.com/uploads/kia-car-logo-png-brand-image-33.png",
  "https://www.freepnglogos.com/uploads/cars-logo-brands-png-images-30.png",
  "https://www.freepnglogos.com/uploads/car-logo-volkswagen-transparent-png-27.png",
];
