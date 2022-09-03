import 'package:get/get.dart';

//enum HomeState { home, settings, name }

class BottomnavbarController extends GetxController {
  int pageIndex = 0;
  onClick(int updatedPageIndex) {
    pageIndex = updatedPageIndex;
    update();
  }
}
