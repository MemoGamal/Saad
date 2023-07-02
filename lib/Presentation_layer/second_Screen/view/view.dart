import 'package:flutter/material.dart';
import 'package:ui_saad/Presentation_layer/main_Screen/Widget/Top_Container.dart';
import 'package:ui_saad/Presentation_layer/resources/ValueManager.dart';

import '../widgets/AppBar.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TheAppBar(),
            TopContainer(
              id: IDManager.secondScreenID,
            ),
          ],
        ),
      ),
    );
  }
}
