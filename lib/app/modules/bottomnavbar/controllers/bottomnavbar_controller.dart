import 'package:get/get.dart';

enum HomeState { home, settings, name }

class BottomnavbarController extends GetxController {
  // final state = HomeState.home.obs;
  // final settings = HomeState.settings.obs;
  // final name = HomeState.name.obs;

  // void selectHome() => state.value = HomeState.home;

  // void selectName() => name.value = HomeState.name;
  // Future<void> selectSettings() async {
  // check if current route is settings
  // if (state.value == HomeState.settings) {
  //   try {
  //     // try to pop e.g. current route in settings is the detail
  //     //  await Get.keys[SettingsNavigation.id]!.currentState!.maybePop();
  //   } catch (e) {
  //     // error
  //   }
  // }
  //   name.value = HomeState.name;
  //   //  state.value = HomeState.home;
  //   state.value = HomeState.settings;
  //   // state.value = HomeState.name;
  // }

  int pageIndex = 0;
  onClick(int updatedPageIndex) {
    pageIndex = updatedPageIndex;
    update();
  }
}
