import 'package:flutter/material.dart';
import 'package:ui_saad/Presentation_layer/resources/TextManager.dart';

class TheAppBar extends StatelessWidget {
  const TheAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          TextManager.topContainerSecondScreenText1,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 30,
          ),
        ),
        Icon(
          Icons.settings,
          size: 25,
        ),
        Icon(
          Icons.arrow_drop_down,
          size: 40,
        ),
        Icon(
          Icons.settings,
          size: 25,
        ),
      ],
    );
  }
}
