import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/view_all_controller.dart';

class ChoiceChipWidget extends StatelessWidget {
  final ctrl = Get.put(ViewAllController());

  ChoiceChipWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 45,
        children: List.generate(ctrl.choiceList.length, (index) {
          return GetBuilder<ViewAllController>(
            builder: (obj) {
              return ChoiceChip(
                labelPadding: EdgeInsets.all(2.0),
                label: Text(
                  ctrl.choiceList[index],
                  style: TextStyle(
                    color: ctrl.defaultChoicIndex == index
                        ? Color.fromARGB(255, 255, 255, 255)
                        : Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                selected: ctrl.defaultChoicIndex == index ? true : false,
                selectedColor: ctrl.defaultChoicIndex == index
                    ? Color.fromARGB(255, 11, 59, 233)
                    : Color.fromARGB(255, 255, 254, 254),
                onSelected: (value) {
                  obj.choicChi(value, index);
                },
                elevation: 15,
                
              );
            },
          );
        }));
  }
}
