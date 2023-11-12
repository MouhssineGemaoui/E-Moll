import 'package:EMOOL/view/screen/home.dart';
import 'package:EMOOL/view/screen/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  List<Widget> listPage = [
    const HomePage(),
    Settings()
  ];

  List bottomappbar = [
    {"title": "125".tr, "icon": Icons.home},
    {"title": "126".tr, "icon": Icons.settings , },
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}