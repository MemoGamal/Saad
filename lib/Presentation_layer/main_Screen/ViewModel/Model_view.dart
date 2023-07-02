import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_saad/Presentation_layer/Third_Screen/Widgets/containerWidget.dart';
import 'package:ui_saad/Presentation_layer/base/baseViewModel.dart';
import 'package:ui_saad/Presentation_layer/main_Screen/Widget/secondContainerWidget.dart';

import '../Widget/MainScreenContainerWidget.dart';

class mainScreenViewModel extends BaseViewModel
    with MainScreeninputViewModel, MainScreenOutPutViewModel {
// Stream Controller ..
  final StreamController _streamController = StreamController();

  @override
  void dispose() {}

  @override
  Sink get inputviewobject => _streamController.sink;

  @override
  Stream get outputviewobject => _streamController.stream.map((event) => event);

  @override
  void start(id) {
    thecontainerWidget(id);
    postDataToUI(id);
  }

  Map tempMap = {};

  // Create the starting fun..
  postDataToUI(int id) {
    // Stream Listening..
    inputviewobject.add(tempMap[id]);
  }

  @override
  thecontainerWidget(int id) {
    Widget myContainerWidget;
    switch (id) {
      case 1:
        myContainerWidget = const MainScreenContainerWidgets();
        tempMap.addAll({id: myContainerWidget});
        break;
      case 2:
        myContainerWidget = const SecondScreenContainerWidget();
        tempMap.addAll({id: myContainerWidget});
        break;
      case 3:
        myContainerWidget = const ThirdScreenContainerWidgets();
        tempMap.addAll({id: myContainerWidget});
        break;
      default:
    }
  }
}

abstract mixin class MainScreeninputViewModel {
  thecontainerWidget(int id);
  Sink get inputviewobject;
}

abstract mixin class MainScreenOutPutViewModel {
  Stream get outputviewobject;
}
