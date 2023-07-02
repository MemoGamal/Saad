import 'package:flutter/material.dart';
import 'package:ui_saad/Presentation_layer/resources/TextManager.dart';

class ThirdScreenContainerWidgets extends StatelessWidget {
  const ThirdScreenContainerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.menu,
          size: 25,
        ),
        Padding(
          padding: EdgeInsets.only(top: 40),
          child: Text(
            TextManager.topContainerThirdScreenText3,
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        Icon(
          Icons.notifications_active,
          size: 25,
        )
      ],
    );
  }
}
