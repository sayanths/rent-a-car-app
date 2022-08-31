import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/views/home_view.dart';
import '../controllers/bottomnavbar_controller.dart';

class BottomnavbarView extends GetView<BottomnavbarController> {
  final _pages = [HomeView(), HomeView(), HomeView(), HomeView()];

  final BottomnavbarController _controller = Get.put(BottomnavbarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
        //  backgroundColor: Color.fromARGB(0, 245, 245, 245),
          resizeToAvoidBottomInset: false,
          body: SafeArea(child: GetBuilder<BottomnavbarController>(
            builder: (context) {
              return _pages[_controller.pageIndex];
            },
          )),
          bottomNavigationBar:
              GetBuilder<BottomnavbarController>(builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BottomNavigationBar(
                    backgroundColor: Colors.white,
                    currentIndex: _controller.pageIndex,
                    onTap: ((newIndex) {
                      _controller.onClick(newIndex);
                    }),
                    type: BottomNavigationBarType.fixed,
                    items: const [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.home), label: ''),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.favorite), label: ''),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.notification_add), label: ''),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.person), label: ''),
                    ]),
              ),
            );
          }),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Obx(() => Scaffold(
  //         bottomNavigationBar: BottomNavigationBar(
  //           backgroundColor: Colors.black,
  //           currentIndex: controller.state.value == HomeState.home ? 0 : 1,
  //           onTap: (index) {
  //             if (index == 0) {
  //               HomeState.home;
  //             } else if (index == 1) {
  //               HomeState.settings;
  //             }else{
  //               HomeState.name;
  //             }
  //           },
  //           items: const [
  //             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
  //             BottomNavigationBarItem(
  //                 icon: Icon(Icons.settings), label: 'Settings'),
  //             BottomNavigationBarItem(icon: Icon(Icons.person), label: 'mame'),
  //           ],
  //         ),
  //         body: Builder(
  //           builder: (context) {
  //             switch (controller.state.value) {
  //               case HomeState.home:
  //                 return HomeView();
  //               case HomeState.settings:
  //                 return Scaffold(
  //                   appBar: AppBar(title: const Text('BottomNavigationBar')),
  //                   body: const Center(child: Text('Home')),
  //                 );
  //               case HomeState.name:
  //                 return Scaffold(
  //                   appBar: AppBar(title: const Text('sd')),
  //                   body: const Center(child: Text('sa')),
  //                 );
  //             }
  //           },
  //         ),
  //       ));
  // }
}
