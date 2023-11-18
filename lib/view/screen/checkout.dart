import 'package:EMOOL/controller/address/adddetails_controller.dart';
import 'package:EMOOL/controller/checkout_controller.dart';
import 'package:EMOOL/core/class/handlingdataview.dart';
import 'package:EMOOL/core/constant/color.dart';
import 'package:EMOOL/core/constant/imgaeasset.dart';
import 'package:EMOOL/core/functions/validinput.dart';
import 'package:EMOOL/core/shared/custombutton.dart';
import 'package:EMOOL/view/widget/auth/customtextformauth.dart';
import 'package:EMOOL/view/widget/checkout/carddeliveerytype.dart';
import 'package:EMOOL/view/widget/checkout/cardpaymentmethod.dart';
import 'package:EMOOL/view/widget/checkout/cardshippingaddress.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckoutController controller = Get.put(CheckoutController());
    // ignore: unused_local_variable
    AddAddressDetailsController controlleradrs =
        Get.put(AddAddressDetailsController());

    return Scaffold(
      appBar: AppBar(
        title: Text('133'.tr),
      ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(10))),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: MaterialButton(
            color: AppColor.secondColor,
            textColor: Colors.white,
            onPressed: () {
              controller.checkout();
            },
            child: Text("147".tr,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          )),
      body: GetBuilder<CheckoutController>(
          builder: (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Container(
                  padding: const EdgeInsets.all(20),
                  child: ListView(
                    children: [
                      Text(
                        "134".tr,
                        style: TextStyle(
                            color: AppColor.secondColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          controller.choosePaymentMethod("cash");
                        },
                        child: CardcardMethodCheckout(
                            title: "135".tr,
                            isActive: controller.paymentMethod == "cash"
                                ? true
                                : false),
                      ),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          controller.choosePaymentMethod("card");
                        },
                        child: CardPaymentMethodCheckout(
                          title: "136".tr,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "137".tr,
                        style: TextStyle(
                            color: AppColor.secondColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              controller.chooseDeliveryType("delivery");
                            },
                            child: CardDeliveryTypeCheckout(
                                imagename: AppImageAsset.deliveryImage2,
                                title: "138".tr,
                                active: controller.deliveryType == "delivery"
                                    ? true
                                    : false),
                          ),
                          const SizedBox(width: 10),
                          // InkWell(
                          //   onTap: () {
                          //     controller.chooseDeliveryType("recive");
                          //   },
                          //   child: CardDeliveryTypeCheckout(
                          //       imagename: AppImageAsset.drivethruImage,
                          //       title: "Revice",
                          //       active: controller.deliveryType == "recive"
                          //           ? true
                          //           : false),
                          // ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      if (controller.deliveryType == "delivery")
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "117".tr,
                              style: TextStyle(
                                  color: AppColor.secondColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            if (controller.dataaddress.isEmpty)
                              InkWell(
                                  onTap: () {
                                    Get.defaultDialog(
                                        title: '146'.tr,
                                        titlePadding: EdgeInsets.all(10),
                                        content: Container(
                                            decoration: BoxDecoration(
                                                color: AppColor.white,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(30),
                                                  topRight: Radius.circular(30),
                                                )),
                                            child: GetBuilder<
                                                    AddAddressDetailsController>(
                                                builder: (controlleradrs) =>
                                                    HandlingDataView(
                                                      statusRequest:
                                                          controlleradrs
                                                              .statusRequest,
                                                      widget: Form(
                                                        key: controlleradrs
                                                            .formstate,
                                                        child:
                                                            Column(children: [
                                                          CustomTextFormAuthaddress(
                                                            labeltext: "139".tr,
                                                            mycontroller:
                                                                controlleradrs
                                                                    .name,
                                                            valid: (val) {
                                                              return validInput(
                                                                  val!,
                                                                  3,
                                                                  100,
                                                                  "name");
                                                            },
                                                          ),
                                                          CustomTextFormAuthaddress(
                                                            labeltext: "140".tr,
                                                            mycontroller:
                                                                controlleradrs
                                                                    .ville,
                                                            valid: (val) {
                                                              return validInput(
                                                                  val!,
                                                                  2,
                                                                  100,
                                                                  "ville");
                                                            },
                                                          ),
                                                          CustomTextFormAuthaddress(
                                                            labeltext: "141".tr,
                                                            mycontroller:
                                                                controlleradrs
                                                                    .city,
                                                            valid: (val) {
                                                              return validInput(
                                                                  val!,
                                                                  5,
                                                                  100,
                                                                  "city");
                                                            },
                                                          ),
                                                          CustomTextFormAuthaddress1(
                                                            isNumber: true,
                                                            labeltext: "142".tr,
                                                            mycontroller:
                                                                controlleradrs
                                                                    .numero,
                                                            valid: (val) {
                                                              return validInput(
                                                                  val!,
                                                                  10,
                                                                  100,
                                                                  "phone");
                                                            },
                                                          ),
                                                          CustomTextFormAuthaddress(
                                                            labeltext: "143".tr,
                                                            mycontroller:
                                                                controlleradrs
                                                                    .email,
                                                            valid: (val) {
                                                              return validInput(
                                                                  val!,
                                                                  5,
                                                                  100,
                                                                  "email");
                                                            },
                                                          ),
                                                          CustomButton(
                                                            text: "147".tr,
                                                            onPressed: () {
                                                              controlleradrs
                                                                  .addAddresscheeckout();

                                                              controller
                                                                  .refreshPage();
                                                            },
                                                          )
                                                        ]),
                                                      ),
                                                    ))));
                                  },
                                  child: Container(
                                    child: Center(
                                        child: Row(
                                      children: [
                                        Text("144".tr),
                                        Text("145".tr,
                                            style: GoogleFonts.sofiaSans(
                                              color: AppColor.primaryColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            )),
                                      ],
                                    )),
                                  )),
                            const SizedBox(height: 10),
                            ...List.generate(
                              controller.dataaddress.length,
                              (index) => InkWell(
                                onTap: () {
                                  controller.chooseShippingAddress(
                                      controller.dataaddress[index].addressId!);
                                },
                                child: CardShppingAddressCheckout(
                                    name:
                                        "${controller.dataaddress[index].addressName}",
                                    ville:
                                        "${controller.dataaddress[index].addressville}",
                                    address:
                                        "${controller.dataaddress[index].addressCity}",
                                    numero:
                                        "${controller.dataaddress[index].addressnumero}",
                                    email:
                                        "${controller.dataaddress[index].addressemail} ",
                                    isactive: controller.addressid ==
                                            controller
                                                .dataaddress[index].addressId
                                        ? true
                                        : false),
                              ),
                            )
                          ],
                        )
                    ],
                  )))),
    );
  }
}
