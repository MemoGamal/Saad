import 'package:flutter/material.dart';
import 'package:ui_saad/Presentation_layer/resources/TextManager.dart';
import 'package:ui_saad/Presentation_layer/resources/ValueManager.dart';
import 'package:ui_saad/Presentation_layer/resources/fontsizemanager.dart';

class ContainerWidget extends StatelessWidget {
  final int index;
  const ContainerWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Two Coloumns
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                TextManager.subjectnames[index],
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: Fontsizemanager.theContainerText1FontSize,
                ),
              ),
              Text(
                "Mr.${TextManager.teachernames[index]}",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: Fontsizemanager.theContainerText1FontSize,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
