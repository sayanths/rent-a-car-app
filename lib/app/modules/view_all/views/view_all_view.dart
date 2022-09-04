import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/constants/widgets/custom_size/custom_size.dart';
import 'package:carzz/app/modules/home/views/widget/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/icons/akar_icons.dart';
import '../../home/views/widget/bg_color.dart';
import '../controllers/view_all_controller.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

import 'widgets/choice_chip.dart';
import 'widgets/grid_view_all.dart';

class ViewAllView extends GetView<ViewAllController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: customContainer(
        ListView(
          children: [
            height10,

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Location(),
            // ),
            height10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: white,
                        ))),
                Expanded(
                  flex: 8,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Search(size: size),
                  ),
                ),
                Expanded(
                  child: Iconify(
                    AkarIcons.filter,
                    color: white,
                  ),
                ),
              ],
            ),
            ImageSlideshow(
              indicatorBackgroundColor: Colors.transparent,
              indicatorColor: white,
              indicatorRadius: 5,
              isLoop: true,
              autoPlayInterval: 4000,
              children: List.generate(
                list.length,
                (index) {
                  final data = list[index];
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 80,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: white,
                      image: DecorationImage(
                        image: NetworkImage(data),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            height10,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ChoiceChipWidget(
                  colors: blue,
                  function: () {},
                  title: "Luxury",
                ),
                ChoiceChipWidget(
                  colors: white,
                  function: () {},
                  title: "Sedan",
                ),
                ChoiceChipWidget(
                  colors: white,
                  function: () {},
                  title: "Vintage",
                ),
                ChoiceChipWidget(
                  colors: white,
                  function: () {},
                  title: "Custom",
                ),
                ChoiceChipWidget(
                  colors: white,
                  function: () {},
                  title: "Hatback",
                ),
              ],
            ),
            height10,
            LimitedBox(
              maxHeight: 450,
              child: GridView.builder(
                  padding: EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: 10,
                  itemBuilder: (BuildContext ctx, index) {
                    return ViewAllGridView();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

final list = [
  'https://img.freepik.com/premium-psd/car-social-media-instagram-post-square-web-banner-advertising-template_177160-364.jpg?w=2000',
  'https://img.etimg.com/photo/msid-81432986,imgsize-387481/BMWEmbed1.jpg',
  'http://www.blog.sagmart.com/wp-content/uploads/2014/10/91449abd-0eca-448b-94c2-aff487fda545.jpg',
];

