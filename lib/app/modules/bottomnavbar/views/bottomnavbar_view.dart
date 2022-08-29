import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/views/home_view.dart';
import '../controllers/bottomnavbar_controller.dart';

class BottomnavbarView extends GetView<BottomnavbarController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.state.value == HomeState.home ? 0 : 1,
            onTap: (index) =>
                index == 0 ? controller.selectHome() : controller.selectName(),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'mame'),
            ],
          ),
          body: Builder(
            builder: (context) {
              switch (controller.state.value) {
                case HomeState.home:
                  return HomeView();
                case HomeState.settings:
                  return Scaffold(
                    appBar: AppBar(title: const Text('BottomNavigationBar')),
                    body: const Center(child: Text('Home')),
                  );
                case HomeState.name:
                  return Scaffold(
                    appBar: AppBar(title: const Text('sd')),
                    body: const Center(child: Text('sa')),
                  );
              }
            },
          ),
        ));
  }
}
