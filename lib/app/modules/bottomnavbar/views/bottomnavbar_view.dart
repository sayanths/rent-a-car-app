import 'package:carzz/app/constants/colors/colors.dart';
import 'package:carzz/app/modules/favourite/views/favourite_view.dart';
import 'package:carzz/app/modules/notifications/views/notifications_view.dart';
import 'package:carzz/app/modules/profileview/views/profileview_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/views/home_view.dart';
import '../controllers/bottomnavbar_controller.dart';

class BottomnavbarView extends GetView<BottomnavbarController> {
  final _pages = [
    HomeView(),
    FavouriteView(),
    NotificationsView(),
    ProfileviewView(),
  ];

  final _controller = Get.put(BottomnavbarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      //resizeToAvoidBottomInset: false,
      body: GetBuilder<BottomnavbarController>(
        builder: (context) {
          return _pages[context.pageIndex];
        },
      ),
      bottomNavigationBar:
          GetBuilder<BottomnavbarController>(builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: BottomNavigationBar(
              selectedItemColor: blue,
              unselectedItemColor: white,
              backgroundColor: black,
              currentIndex: _controller.pageIndex,
              onTap: ((newIndex) {
                _controller.onClick(newIndex);
              }),
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notification_add), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
              ],
            ),
          ),
        );
      }),
    );
  }
}
