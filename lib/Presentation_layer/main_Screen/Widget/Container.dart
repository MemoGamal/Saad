import 'package:flutter/material.dart';
import 'package:ui_saad/Presentation_layer/main_Screen/Widget/ContainerWidget.dart';
import 'package:ui_saad/Presentation_layer/resources/ValueManager.dart';

class TheContainer extends StatelessWidget {
  final Color containerColor;
  final int index;
  const TheContainer({
    super.key,
    required this.containerColor,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: ValueManager.theContainerPaddingValueTopAndBottom,
        horizontal: ValueManager.theContainerPaddingValueRightAndLeft,
      ),
      child: Container(
        height: ValueManager.firstScreenContainerHeight,
        width: ValueManager.firstScreenContainerWidth,
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(ValueManager.topContainerBorderRadius),
          color: containerColor,
        ),
        child: ContainerWidget(
          index: index,
        ),
      ),
    );
  }
}
