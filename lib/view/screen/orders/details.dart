
import 'package:EMOOL/controller/orders/details_controller.dart';
import 'package:EMOOL/core/class/handlingdataview.dart';
import 'package:EMOOL/core/constant/color.dart';
import 'package:EMOOL/core/functions/translatefatabase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersDetails extends StatelessWidget {
  const OrdersDetails({super.key});

  @override
  Widget build(BuildContext context) {
   OrdersDetailsController controller = Get.put(OrdersDetailsController());
    return Scaffold(
      appBar: AppBar(
        title:  Text('106'.tr),
      ),
      body: Container(
        padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GetBuilder<OrdersDetailsController>(
            builder: ((controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: ListView(children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          Table(
                            children: [
                              TableRow(children: [
                                Text("113".tr,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: AppColor.primaryColor,
                                        fontWeight: FontWeight.bold)),
                                Text("114".tr,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: AppColor.primaryColor,
                                        fontWeight: FontWeight.bold)),
                                Text("115".tr,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: AppColor.primaryColor,
                                        fontWeight: FontWeight.bold)),
                              ]),
                        
                              ...List.generate(
                                  controller.data.length,
                                  (index) => TableRow(children: [
                                        Text("${translateDatabase( controller.data[index].itemsNameAr ,controller.data[index].itemsNamefr,) }",
                                            textAlign: TextAlign.center),
                                        Text("${controller.data[index].countitems}", 
                                        textAlign: TextAlign.center),
                                        Text("${controller.data[index].itemsprice}",
                                            textAlign: TextAlign.center),
                                      ]))
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child:   Row(
                              children: [
                                Text("116".tr),
                                Text(" : ${controller.ordersModel.ordersTotalprice}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: AppColor.primaryColor,
                                        fontWeight: FontWeight.bold)),
                                Text("127".tr,
                                   textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: AppColor.primaryColor,
                                        fontWeight: FontWeight.bold)),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if (controller.ordersModel.ordersType == 0)    Card(
                    child: Container(
                        child: Column(
                          children: [
                             Text("117".tr,
                          style: TextStyle(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.bold)),
                            ListTile(
                      // title:  Text("${controller.ordersModel.addressName}",
                      //       ),
                      subtitle: Text(
                              "   - ${controller.ordersModel.addressName}\n   - ${controller.ordersModel.addressCity} \n   - ${controller.ordersModel.addressville} \n   - ${controller.ordersModel.addressnumero} \n   - ${controller.ordersModel.addressemail}"),
                    ),
                          ],
                        )),
                  ),
              if (controller.ordersModel.ordersType == 0)    Card(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 300,
                      width: double.infinity,
                  
                    ),
                  )
                ])))),
      ),
    );
  }
}
