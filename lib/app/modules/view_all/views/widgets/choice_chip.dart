import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/colors/colors.dart';
import '../../controllers/view_all_controller.dart';

class ChoiceChipWidget extends StatelessWidget {
  final ctrl = Get.put(ViewAllController());

 // final Function function;


  ChoiceChipWidget({
    Key? key,
 
   // required this.function,
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 45,
        children: List.generate(ctrl.choiceList.length, (index) {
          return ChoiceChip(
            labelPadding: EdgeInsets.all(2.0),
            label: Text(
              ctrl.choiceList[index],
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.white, fontSize: 14),
            ),
            selected: ctrl.defaultChoicIndex == index,
            selectedColor: Colors.deepPurple,
            onSelected: (value) {
              ctrl.choicChi(value);
           
            },
           // backgroundColor: red,
            elevation: 1,
          
          );
        }));
  }
}
