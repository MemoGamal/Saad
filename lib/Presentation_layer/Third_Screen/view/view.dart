import 'package:flutter/material.dart';
import 'package:ui_saad/Presentation_layer/Third_Screen/Widgets/lessons.dart';
import 'package:ui_saad/Presentation_layer/main_Screen/Widget/Top_Container.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const TopContainer(id: 3),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.70,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Lessons(index: index);
              },
            ),
          ),
        ],
      )),
    );
  }
}
