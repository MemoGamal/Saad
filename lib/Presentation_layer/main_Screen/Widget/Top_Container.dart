import 'package:flutter/material.dart';
import 'package:ui_saad/Presentation_layer/main_Screen/Widget/MainScreenContainerWidget.dart';
import 'package:ui_saad/Presentation_layer/resources/ColorManager.dart';
import 'package:ui_saad/Presentation_layer/resources/ValueManager.dart';

import '../ViewModel/Model_view.dart';

class TopContainer extends StatelessWidget {
  final int id;
  const TopContainer({super.key, required this.id});
  static final mainScreenViewModel themainScreenViewModel =
      mainScreenViewModel();
  void _bind(id) {
    themainScreenViewModel.start(id);
  }

  @override
  Widget build(BuildContext context) {
    _bind(id);
    return StreamBuilder(
        stream: themainScreenViewModel.outputviewobject,
        builder: (context, snapshot) {
          return Container(
            height: ValueManager.topContainerHeight,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(ValueManager.topContainerBorderRadius),
              color: ColorManager.topContainerColor,
            ),
            child: snapshot.data,
          );
        });
  }
}
