import 'package:get/get.dart';

class ViewAllController extends GetxController {
  bool newValue =false;
  int defaultChoicIndex = 0;
  List<String> choiceList = [
    ' Luxury',
    'Sedan',
    'Vintage',
    'Hatback',
  ];
  void choicChi(bool value) {
    this.newValue = value;
    update();
  }
  
}
