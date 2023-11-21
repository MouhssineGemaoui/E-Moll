import 'package:EMOOL/controller/homescreen_controller.dart';
import 'package:EMOOL/view/widget/home/custombuttonappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomAppBarHome extends StatelessWidget {
  const CustomBottomAppBarHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            child: Row(
              children: [
                ...List.generate(controller.listPage.length  + 1, ((index) {
                  int i = index > 1 ? index - 1 : index;
                  return index == 1
                      ? const Spacer()
                      : Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child: CustomButtonAppBar(
                            textbutton: controller.bottomappbar[i]['title'],
                            icondata: controller.bottomappbar[i]['icon'],
                            onPressed: () {
                              controller.changePage(i);
                            },
                            active: controller.currentpage == i ? true : false),
                      );
                }))
              ],
            )));
  }
}
