import 'package:EMOOL/controller/address/adddetails_controller.dart';
import 'package:EMOOL/controller/checkout_controller.dart';
import 'package:EMOOL/core/class/handlingdataview.dart';
import 'package:EMOOL/core/shared/custombutton.dart';
import 'package:EMOOL/view/widget/auth/customtextformauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressAddDetailsCheeckout extends StatelessWidget {
  const AddressAddDetailsCheeckout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddAddressDetailsController controller =
        Get.put(AddAddressDetailsController());
    CheckoutController controllercheek = Get.put(CheckoutController());
    return Scaffold(
      appBar: AppBar(
        title: Text('add details address'),
      ),
      body: Container(
          padding: EdgeInsets.all(15),
          child: GetBuilder<AddAddressDetailsController>(
            builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: ListView(children: [
                  CustomTextFormAuth(
                      hinttext: "your name",
                      labeltext: "full  name",
                      iconData: Icons.person,
                      mycontroller: controller.name,
                      valid: (val) {},
                      isNumber: false),
                  CustomTextFormAuth(
                      hinttext: "Ville",
                      labeltext: "Ville",
                      iconData: Icons.villa,
                      mycontroller: controller.ville,
                      valid: (val) {},
                      isNumber: false),
                  CustomTextFormAuth(
                      hinttext: "Address city",
                      labeltext: "Address city",
                      iconData: Icons.location_city,
                      mycontroller: controller.city,
                      valid: (val) {},
                      isNumber: false),
                  CustomTextFormAuth(
                      hinttext: "Numero Phone",
                      labeltext: "Numero Phone",
                      iconData: Icons.call,
                      mycontroller: controller.numero,
                      valid: (val) {},
                      isNumber: true),
                  CustomTextFormAuthemail(
                    hinttext: "Address email",
                    labeltext: "email",
                    iconData: Icons.email,
                    mycontroller: controller.email,
                    valid: (val) {},
                  ),
                  CustomButton(
                    text: "Add",
                    onPressed: () {
                      controller.addAddresscheeckout();
                      controllercheek.refreshPage();
                    },
                  )
                ])),
          )),
    );
  }
}
