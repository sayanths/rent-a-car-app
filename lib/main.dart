import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Car Rent",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      // home: ResponsiveLayout(
      //   mobileScaffold: ,
      // ),
    ),
  );
}
