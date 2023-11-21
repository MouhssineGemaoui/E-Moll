import 'dart:io';

import 'package:EMOOL/controller/homescreen_controller.dart';
import 'package:EMOOL/core/constant/color.dart';
import 'package:EMOOL/core/constant/routes.dart';
import 'package:EMOOL/view/widget/home/custombottomappbarhome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
              floatingActionButton: FloatingActionButton(
                backgroundColor: AppColor.primaryColor,
                  onPressed: () {
                    Get.toNamed(AppRoute.cart) ; 
                  },
                  child: const Icon(Icons.shopping_cart_outlined)),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: const CustomBottomAppBarHome(),
              body: WillPopScope(
                   child: controller.listPage.elementAt(controller.currentpage),
                   onWillPop: () {
                    Get.defaultDialog(
                      titleStyle: TextStyle(fontWeight: FontWeight.bold,
                      color: AppColor.primaryColor),
                    title: "100".tr,
                    middleText: "163".tr,
                    onCancel: () {},
                    cancelTextColor: AppColor.secondColor,
                    confirmTextColor: AppColor.secondColor,
                  textConfirm: '96'.tr,
                  textCancel: '97'.tr,
                    buttonColor: AppColor.thirdColor,
                    onConfirm: () {
                      exit(0);
                    },
                   ) ; 
                   return Future.value(false);},
           ),
            ));
  }
}
