import 'package:flutter/material.dart';

import '../../../../constants/colors/colors.dart';
import '../../../../constants/fonts/fonts.dart';

class ChoiceChipWidget extends StatelessWidget {
  final String title;
  final Function function;
  final Color colors;

  ChoiceChipWidget({
    Key? key,
    required this.title,
    required this.function,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      selectedColor: colors,
      disabledColor: white,
      label: Text(
        title,
        style: gfontsubtitlefont(cl: black),
      ),
      selected: true,
      onSelected: function(),
    );
  }
}
