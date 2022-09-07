import 'package:carzz/app/modules/favourite/views/favourite_view.dart';
import 'package:carzz/app/modules/home/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ViewAllController extends GetxController {
  bool newValue = false;
  int defaultChoicIndex = 0;
  List<String> choiceList = [
    'Luxury',
    'Sedan',
    'Vintage',
    'Hatback',
  ];
  List<Widget> choiceListWidget = [
    FavouriteView(),
    HomeView(),
    FavouriteView(),
    HomeView(),
    
  ];
  void choicChi(bool value, int index) {
    newValue = value;
    defaultChoicIndex = index;
    update();
  }
}
