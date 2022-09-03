import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/constants/fonts/fonts.dart';
import 'package:carzz/app/modules/home/views/widget/bg_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/widgets/custom_size/custom_size.dart';
import '../../view_all/views/widgets/grid_view_all.dart';
import '../controllers/favourite_controller.dart';

class FavouriteView extends GetView<FavouriteController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: black,
        body: customContainer(
          SingleChildScrollView(
            child: Column(
              children: [
                HeadingsInNavBarScreen(title: "Favourite"),
                   LimitedBox(
                  maxHeight: 450,
                  child:
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 3,
                      crossAxisSpacing: 25,
                      mainAxisSpacing: 25),
                  itemCount: 10,
                  itemBuilder: (BuildContext ctx, index) {
                    return ViewAllGridView();
                  }),
                ),
               // ViewAllGridView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

