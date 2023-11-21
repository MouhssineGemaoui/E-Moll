import 'package:EMOOL/controller/home_controller.dart';
import 'package:EMOOL/data/model/settings.dart';
import 'package:EMOOL/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CustomCardHome extends GetView<HomeControllerImp> {
  final String title;
  settingsModel? settingsmodel;
  final String body;
   CustomCardHome({Key? key, required this.title,required this.settingsmodel, required this.body})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height / 1.5,
          decoration: BoxDecoration(
            image: DecorationImage(
              
                image: NetworkImage(
                    '${AppLink.imagestItems}/${controller.settingsdata[0]["settingsImage"]}')),
            // color: AppColor.primaryColor,
            // borderRadius: BorderRadius.circular(20)
          ),
          // child: ListTile(
          //   title: Text(title,
          //       style: const TextStyle(color: Colors.white, fontSize: 20)),
          //   subtitle: Text(body,
          //       style: const TextStyle(color: Colors.white, fontSize: 30)),
          // ),
        );
  }
}
