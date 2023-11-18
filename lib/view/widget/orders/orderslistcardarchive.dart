import 'package:EMOOL/controller/orders/archive_controller.dart';
import 'package:EMOOL/core/constant/color.dart';
import 'package:EMOOL/data/model/ordersmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

class CardOrdersListArchive extends GetView<OrdersArchiveController> {
  final OrdersModel listdata;

  const CardOrdersListArchive({Key? key, required this.listdata})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                                    Text("107".tr),

                  Text(" :  ${listdata.ordersId}".tr,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  const Spacer(),
                  // Text(listdata.ordersDatetime!)
                  Text(
                    Jiffy.parse(listdata.ordersDatetime.toString()).fromNow(),
                    style: const TextStyle(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Divider(),
              Row(
                children: [
                  Text("108".tr),
                  Text(": ${controller.printOrderType(listdata.ordersType!)}"),
                ],
              ),
              Row(
                children: [
                  Text("109".tr),
                  Text(": ${listdata.ordersPrice} \Dh" ),
                ],
              ),
              Row(
                children: [
                  Text("110".tr),
                  Text(": ${listdata.ordersPricedelivery} \Dh "),
                ],
              ),
              Row(
                children: [
                  Text("111".tr),
                  Text(
                      ": ${controller.printPaymentMethod(listdata.ordersPaymentmethod!)} "
                          .tr),
                ],
              ),
              Row(
                children: [
                  Text("112".tr),
                  Text(
                      ": ${controller.printOrderStatus(listdata.ordersStatus!)} "
                          .tr),
                ],
              ),
   
            
            ],
          )),
    );
  }
}
