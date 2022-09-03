import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/constants/fonts/fonts.dart';
import 'package:carzz/app/constants/widgets/custom_size/custom_size.dart';
import 'package:carzz/app/modules/home/views/widget/widget.dart';
import 'package:carzz/app/modules/view_all/views/view_all_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        child: ListView(
          children: [
            Search(size: size),
            height30,
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
            LimitedBox(
              maxHeight: 200,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return AvailableCarsContainer(size: size);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
