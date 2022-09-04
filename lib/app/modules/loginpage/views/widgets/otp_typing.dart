import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../constants/colors/colors.dart';

class OtpTypingContainer extends StatelessWidget {
  const OtpTypingContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 56,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: TextField(
          onChanged: (value) {
            value.length == 1
                ? FocusScope.of(context).nextFocus()
                : null;
          },
          decoration:
              InputDecoration(border: InputBorder.none),
          style: Theme.of(context).textTheme.headline6,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      ),
    );
  }
}