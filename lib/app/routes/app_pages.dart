import 'package:get/get.dart';

import 'package:carzz/app/modules/bottomnavbar/bindings/bottomnavbar_binding.dart';
import 'package:carzz/app/modules/bottomnavbar/views/bottomnavbar_view.dart';
import 'package:carzz/app/modules/email_login/bindings/email_login_binding.dart';
import 'package:carzz/app/modules/email_login/views/email_login_view.dart';
import 'package:carzz/app/modules/favourite/bindings/favourite_binding.dart';
import 'package:carzz/app/modules/favourite/views/favourite_view.dart';
import 'package:carzz/app/modules/full_screen/bindings/full_screen_binding.dart';
import 'package:carzz/app/modules/full_screen/views/full_screen_view.dart';
import 'package:carzz/app/modules/home/bindings/home_binding.dart';
import 'package:carzz/app/modules/home/views/home_view.dart';
import 'package:carzz/app/modules/loginpage/bindings/loginpage_binding.dart';
import 'package:carzz/app/modules/loginpage/views/forgotpassword_view.dart';
import 'package:carzz/app/modules/loginpage/views/loginpage_view.dart';
import 'package:carzz/app/modules/notifications/bindings/notifications_binding.dart';
import 'package:carzz/app/modules/notifications/views/notifications_view.dart';
import 'package:carzz/app/modules/profileview/bindings/profileview_binding.dart';
import 'package:carzz/app/modules/profileview/views/profileview_view.dart';
import 'package:carzz/app/modules/signup/bindings/signup_binding.dart';
import 'package:carzz/app/modules/signup/views/signup_view.dart';
import 'package:carzz/app/modules/splashscreen/bindings/splashscreen_binding.dart';
import 'package:carzz/app/modules/splashscreen/views/splashscreen_view.dart';
import 'package:carzz/app/modules/view_all/bindings/view_all_binding.dart';
import 'package:carzz/app/modules/view_all/views/view_all_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASHSCREEN;

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
    GetPage(
      name: _Paths.VIEW_ALL,
      page: () => ViewAllView(),
      binding: ViewAllBinding(),
    ),
    GetPage(
      name: _Paths.FAVOURITE,
      page: () => FavouriteView(),
      binding: FavouriteBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONS,
      page: () => NotificationsView(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILEVIEW,
      page: () => ProfileviewView(),
      binding: ProfileviewBinding(),
    ),
    GetPage(
      name: _Paths.FULL_SCREEN,
      page: () => FullScreenView(),
      binding: FullScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGINPAGE,
      page: () => LoginpageView(),
      binding: LoginpageBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => MyCustomSplashScreen(),
      binding: SplashscreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    // GetPage(
    //   name: _Paths.FORGOTPASSWORD,
    //   page: () => ForgotpasswordView(),
    //   binding: ForgotpasswordBinding(),
    // ),
    GetPage(
      name: _Paths.EMAIL_LOGIN,
      page: () => EmailLoginView(),
      binding: EmailLoginBinding(),
    ),
  ];
}
