import 'package:carzz/app/modules/favourite/views/favourite_view.dart';
import 'package:carzz/app/modules/home/views/home_view.dart';
import 'package:carzz/app/modules/view_all/views/widgets/Vintage.dart';
import 'package:carzz/app/modules/view_all/views/widgets/xuv_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../views/widgets/grid_view_all.dart';
import '../views/widgets/sedan_type.dart';

class ViewAllController extends GetxController {
  bool newValue = false;
  int defaultChoicIndex = 0;
  List<String> choiceList = [
    'Luxury',
    'Sedan',
    'Vintage',
    'Xuv Type',
  ];
  List<Widget> choiceListWidget = [
    ViewAllGridView(),
    SedanType(),
    VintageCars(),
    XuvType(),
    
  ];
  void choicChi(bool value, int index) {
    newValue = value;
    defaultChoicIndex = index;
    update();
  }
}
