import 'package:get/get.dart';

import 'package:carzz/app/modules/bottomnavbar/bindings/bottomnavbar_binding.dart';
import 'package:carzz/app/modules/bottomnavbar/views/bottomnavbar_view.dart';
import 'package:carzz/app/modules/home/bindings/home_binding.dart';
import 'package:carzz/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOTTOMNAVBAR;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMNAVBAR,
      page: () => BottomnavbarView(),
      binding: BottomnavbarBinding(),
    ),
  ];
}
