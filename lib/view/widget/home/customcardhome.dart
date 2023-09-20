import 'package:ecommercecourse/controller/home_controller.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCardHome extends GetView<HomeControllerImp> {

  const CustomCardHome({Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
   
      child: Column(children: [
        Container(
          alignment: Alignment.center,
          height: 550,
          decoration: BoxDecoration(
              // color: AppColor.primaryColor,
              image: DecorationImage(image: AssetImage('assets/images/1.png'),
              fit: BoxFit.fill),
            ),
        ),
        Container(height: 10,
        color: AppColor.primaryColor,
        )
      ]),
    );
  }
}