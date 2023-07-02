import 'package:flutter/material.dart';
import 'package:ui_saad/Presentation_layer/resources/TextManager.dart';
import 'package:ui_saad/Presentation_layer/resources/ValueManager.dart';

class SecondScreenContainerWidget extends StatelessWidget {
  const SecondScreenContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ValueManager.topContainerPaddingValueRightAndLeft,
        vertical: ValueManager.topContainerPaddingValueTop,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            Icons.arrow_back_ios,
            size: 30,
          ),
          Text(
            TextManager.topContainerSecondScreenText2,
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
