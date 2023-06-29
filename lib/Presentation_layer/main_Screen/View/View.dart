import 'package:flutter/material.dart';
import 'package:ui_saad/Presentation_layer/main_Screen/Widget/Container.dart';
import 'package:ui_saad/Presentation_layer/main_Screen/Widget/Top_Container.dart';
import 'package:ui_saad/Presentation_layer/resources/ColorManager.dart';
import 'package:ui_saad/Presentation_layer/resources/TextManager.dart';
import 'package:ui_saad/Presentation_layer/resources/ValueManager.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TopContainer(),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return TheContainer(
                  containerColor: ColorManager.containerColors[index],
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
