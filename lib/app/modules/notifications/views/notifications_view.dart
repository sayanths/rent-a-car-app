import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/constants/fonts/fonts.dart';
import 'package:carzz/app/modules/home/views/widget/bg_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/widgets/custom_size/custom_size.dart';
import '../controllers/notifications_controller.dart';

class NotificationsView extends GetView<NotificationsController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: black,
        body: customContainer(
          SingleChildScrollView(
            child: Column(
              children: [
                HeadingsInNavBarScreen(title: 'Notification'),
                LimitedBox(
                  maxHeight: size.height,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Divider(
                        height: 5,
                        color: white,
                      );
                    },
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Image.network(
                            "https://res.cloudinary.com/sayanth/image/upload/v1662206280/zara%27s%20shopping%20app/zara%20shopping/notifcation_udbmy3.png"),
                        title: Text(
                          "Onam Special Offer",
                          style: gfontsubtitlefont(
                              cl: white, fw: FontWeight.w400, sz: 20),
                        ),
                        subtitle: Text(
                          "30 % off for all vechile for which rent is more than 3000.",
                          style: Lato(cl: white, fw: FontWeight.normal, sz: 15),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
