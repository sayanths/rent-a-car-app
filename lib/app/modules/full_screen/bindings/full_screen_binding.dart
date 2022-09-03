import 'package:get/get.dart';

import '../controllers/full_screen_controller.dart';

class FullScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FullScreenController>(
      () => FullScreenController(),
    );
  }
}
