import 'package:flutter/material.dart';
import 'package:ui_saad/Presentation_layer/main_Screen/View/View.dart';
import 'package:ui_saad/Presentation_layer/second_Screen/view/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondScreen(),
    );
  }
}
