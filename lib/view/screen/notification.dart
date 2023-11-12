import 'package:EMOOL/controller/notification_controller.dart';
import 'package:EMOOL/core/class/handlingdataview.dart';
import 'package:EMOOL/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    NotificationController controller = Get.put(NotificationController());
    return Scaffold(
      appBar: AppBar(title: Text("70".tr),),
      body: Container(
        child: GetBuilder<NotificationController>(
            builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: Container(
                    padding: const EdgeInsets.all(10),
                    child: ListView(children: [
                      const SizedBox(height: 10),
                      ...List.generate(
                          controller.data.length,
                          (index) => Card(
                            child: Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.symmetric(vertical: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("102".tr),
                                             Text(
                                                "${Jiffy.parse(controller.data[index]['notification_datetime'], ).format()}",
                                                style:const TextStyle(
                                                    color: AppColor.primaryColor,
                                                    fontWeight: FontWeight.bold),
                                              
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                 
                                        Text(controller.data[index]
                                                ['notification_title']), 
                                           Text(controller.data[index]
                                                ['notification_body']),
                                           
                                         
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                          ))
                    ])))),
      ),
    );
  }
}
