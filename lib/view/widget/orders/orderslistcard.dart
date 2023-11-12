import 'package:EMOOL/controller/orders/pending_controller.dart';
import 'package:EMOOL/core/constant/color.dart';
import 'package:EMOOL/core/constant/routes.dart';
import 'package:EMOOL/data/model/ordersmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

class CardOrdersList extends GetView<OrdersPendingController> {
  final OrdersModel listdata;
  const CardOrdersList({Key? key, required this.listdata}) : super(key: key);

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

                  Text(": ${listdata.ordersId}".tr,
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
                  Text(": ${listdata.ordersPrice} " ),
                                    Text("127".tr),

                ],
              ),
              Row(
                children: [
                  Text("110".tr),
                  Text(": ${listdata.ordersPricedelivery} "),
                  Text("127".tr),

                ],
              ),
              Row(
                children: [
                  Text("111".tr),
                  Text(
                      ": ${controller.printPaymentMethod(listdata.ordersPaymentmethod!)}"),

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
              const Divider(),
              Row(
                children: [
                  Text("116".tr),
                  Text(": ${listdata.ordersTotalprice.toString()} ".tr,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold)),
                                            Text("127".tr,  style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold)),
                  const Spacer(),
                  MaterialButton(
                    onPressed: () {
                      Get.toNamed(AppRoute.ordersdetails,
                          arguments: {"ordersmodel": listdata});
                    },
                    color: AppColor.thirdColor,
                    textColor: AppColor.secondColor,
                    child: Text("106".tr),
                  ),
                  SizedBox(width: 10),
                  if (listdata.ordersStatus! == 0)
                    MaterialButton(
                      onPressed: () {
                        controller.deleteOrder(listdata.ordersId!.toString());
                      },
                      color: AppColor.thirdColor,
                      textColor: AppColor.secondColor,
                      child: Text("105".tr),
                    )
                ],
              ),
            ],
          )),
    );
  }
}