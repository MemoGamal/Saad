import 'package:flutter/material.dart';
import 'package:ui_saad/Presentation_layer/resources/ColorManager.dart';
import 'package:ui_saad/Presentation_layer/resources/TextManager.dart';
import 'package:ui_saad/Presentation_layer/resources/ValueManager.dart';
import 'package:ui_saad/Presentation_layer/resources/fontsizemanager.dart';

class MainScreenContainerWidgets extends StatelessWidget {
  const MainScreenContainerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: ValueManager.topContainerPaddingValueTop,
        left: ValueManager.topContainerPaddingValueRightAndLeft,
        right: ValueManager.topContainerPaddingValueRightAndLeft,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Three coloumns
          const Column(
            children: [
              Icon(
                Icons.menu,
              ),
            ],
          ),
          Column(
            children: [
              const Text(
                TextManager.topContainerText1,
                style: TextStyle(
                  color: ColorManager.topContainerText1Colours,
                  fontWeight: FontWeight.bold,
                  fontSize: Fontsizemanager.topContainerText1FontSize,
                ),
              ),
              const Text(
                TextManager.topContainerText2,
                style: TextStyle(
                  color: ColorManager.topContainerText2Colours,
                  fontWeight: FontWeight.bold,
                  fontSize: Fontsizemanager.topContainerText2FontSize,
                ),
              ),
              SizedBox(
                height: ValueManager.topContainerElevatedButtonHeight,
                width: ValueManager.topContainerElevatedButtonWidth,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(TextManager.topContainerText3),
                ),
              ),
            ],
          ),
          const Column(
            children: [
              Icon(Icons.notifications_on),
            ],
          ),
        ],
      ),
    );
  }
}
