import 'package:flutter/material.dart';
import 'package:ui_saad/Presentation_layer/main_Screen/Widget/TopContainer_widgets.dart';
import 'package:ui_saad/Presentation_layer/resources/ColorManager.dart';
import 'package:ui_saad/Presentation_layer/resources/ValueManager.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ValueManager.topContainerHeight,
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(ValueManager.topContainerBorderRadius),
        color: ColorManager.topContainerColor,
      ),
      child: const ContainerWidgets(),
    );
  }
}
