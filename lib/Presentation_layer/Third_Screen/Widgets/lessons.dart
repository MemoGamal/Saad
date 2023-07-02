import 'package:flutter/material.dart';
import 'package:ui_saad/Presentation_layer/resources/ColorManager.dart';
import 'package:ui_saad/Presentation_layer/resources/TextManager.dart';
import 'package:ui_saad/Presentation_layer/resources/ValueManager.dart';
import 'package:ui_saad/Presentation_layer/resources/fontsizemanager.dart';

class Lessons extends StatelessWidget {
  final int index;
  const Lessons({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: ValueManager.thirdScreenPaddingHorizontly,
        vertical: ValueManager.thirdScreenPaddingVeritcally,
      ),
      child: Container(
        width: ValueManager.thirdScreenContainerwidth,
        height: ValueManager.thirdScreenContainerHeight,
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(ValueManager.topContainerBorderRadius),
          color: ColorManager.thirdScreenLessonsContainerColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text(
                  TextManager.topContainerThirdScreenText1,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: Fontsizemanager.thirdScreentext1FontSize,
                  ),
                ),
                // SVG_PIC_ASSET
              ],
            ),
            Text(
              "${TextManager.topContainerThirdScreenText2}$index",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
