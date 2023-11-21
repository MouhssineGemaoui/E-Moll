
// ignore_for_file: body_might_complete_normally_nullable, unused_local_variable

import 'package:EMOOL/controller/address/adddetails_controller.dart';
import 'package:EMOOL/core/class/handlingdataview.dart';
import 'package:EMOOL/core/shared/custombutton.dart';
import 'package:EMOOL/view/widget/auth/customtextformauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressAddDetails extends StatelessWidget {
  const AddressAddDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddAddressDetailsController controller =
        Get.put(AddAddressDetailsController());
    return Scaffold(
      appBar: AppBar(
        title:  Text('146'.tr),
      ),
      body: Container(
          padding: EdgeInsets.all(15),
          child: GetBuilder<AddAddressDetailsController>(
            builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: ListView(children: [
               CustomTextFormAuth(
                      hinttext: "139".tr,
                      labeltext: "139".tr,
                      iconData: Icons.person,
                      mycontroller: controller.name,
                      valid: (val)  {},
                      isNumber: false),
                  CustomTextFormAuth(
                      hinttext: "140".tr,
                      labeltext: "140".tr,
                      iconData: Icons.villa,
                      mycontroller: controller.ville,
                      valid: (val) {},
                      isNumber: false),
                 CustomTextFormAuth(
                      hinttext: "141".tr,
                      labeltext: "141".tr,
                      iconData: Icons.location_city,
                      mycontroller: controller.city,
                      valid: (val) {},
                      isNumber: false),
                  CustomTextFormAuth(
                      hinttext: "142".tr,
                      labeltext: "142".tr,
                      iconData: Icons.call,
                      mycontroller: controller.numero,
                      valid: (val) {},
                      isNumber: true),
                  CustomTextFormAuthemail(
                      hinttext: "143".tr,
                      labeltext: "143".tr,
                      iconData: Icons.email,
                      mycontroller: controller.email,
                      valid: (val) {},
                      ),
                  CustomButton(
                    text: "147".tr,
                    onPressed: () {
                      controller.addAddress() ; 
                    },
                  )
                ])),
          )),
    );
  }
}
