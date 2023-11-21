import 'package:EMOOL/core/class/statusrequest.dart';
import 'package:EMOOL/core/constant/routes.dart';
import 'package:EMOOL/core/functions/handingdatacontroller.dart';
import 'package:EMOOL/core/services/services.dart';
import 'package:EMOOL/data/datasource/remote/address_data.dart';
import 'package:EMOOL/data/datasource/remote/checkout_date.dart';
import 'package:EMOOL/data/model/addressmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutController extends GetxController {
  AddressData addressData = Get.put(AddressData(Get.find()));
  CheckoutData checkoutData = Get.put(CheckoutData(Get.find()));

  MyServices myServices = Get.find();

  StatusRequest statusRequest = StatusRequest.none;

  String? paymentMethod;
  String? deliveryType;
  int addressid = 0;

  int? couponid;
  String? coupondiscount;
  String? priceorders;

  List<AddressModel> dataaddress = [];

  choosePaymentMethod(String val) {
    paymentMethod = val;
    update();
  }

  chooseDeliveryType(String val) {
    deliveryType = val;
    update();
  }

  chooseShippingAddress(val) {
    addressid = val;
    update();
  }

  getShippingAddress() async {
    statusRequest = StatusRequest.loading;
update();
    var response = await addressData
        .getData(myServices.sharedPreferences.getString("id")!);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List listdata = response['data']; 
        dataaddress.addAll(listdata.map((e) => AddressModel.fromJson(e)));
        addressid = dataaddress[0].addressId!;
      } else {
        statusRequest = StatusRequest.success;
      }
      // End
    }
    update();
  }

  refreshPage() {
     update();
    getShippingAddress();
   
  }

  checkout() async {
    if (paymentMethod == null) {
      return Get.snackbar(
       "103".tr,
        "79".tr,
        forwardAnimationCurve: Curves.easeInOutBack,
        icon: Icon(Icons.check_circle_outlined),
        duration: const Duration(seconds: 10),
      );
    }
    if (deliveryType == null) {
      return Get.snackbar(
        "103".tr,
        "80".tr,
        icon: Icon(Icons.delivery_dining),
        duration: const Duration(seconds: 10),
      );
    }
    if (dataaddress.isEmpty) {
      return Get.snackbar(
       "103".tr,
        "81".tr,
        icon: Icon(Icons.location_city),
        duration: const Duration(seconds: 10),
      );
    }
    statusRequest = StatusRequest.loading;

    update();

    Map data = {
      "usersid": myServices.sharedPreferences.getString("id"),
      "addressid": addressid.toString(),
      "orderstype": deliveryType.toString(),
      "pricedelivery": "10",
      "ordersprice": priceorders,
      "couponid": couponid.toString(),
      "coupondiscount": coupondiscount.toString(),
      "paymentmethod": paymentMethod.toString()
    };

    var response = await checkoutData.checkout(data);

    print("=============================== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.offAllNamed(AppRoute.homepage);
        Get.snackbar(
          "101".tr,
          "82".tr,
          onTap: (snack) {
            Get.toNamed(AppRoute.orderspending);
          },
          duration: Duration(seconds: 2),
        );
      } else {
        statusRequest = StatusRequest.none;
        Get.snackbar("103".tr, "104".tr);
      }
      // End
    }
    update();
  }

  checkoutaddress() async {
    statusRequest = StatusRequest.loading;

    update();

    Map data = {
      "usersid": myServices.sharedPreferences.getString("id"),
      "addressid": addressid.toString(),
      "orderstype": deliveryType.toString(),
      "pricedelivery": "10",
      "ordersprice": priceorders,
      "couponid": couponid.toString(),
      "coupondiscount": coupondiscount.toString(),
      "paymentmethod": paymentMethod.toString()
    };

    var response = await checkoutData.checkout(data);

    print("=============================== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.snackbar(
          "101".tr,
          "82".tr,
          onTap: (snack) {
            Get.toNamed(AppRoute.orderspending);
          },
          duration: Duration(seconds: 2),
        );

        Get.offAllNamed(AppRoute.homepage);
      } else {
        statusRequest = StatusRequest.none;
        Get.snackbar("103".tr, "104".tr);
      }
      // End
    }
    update();
  }

  @override
  void onInit() {
    couponid = Get.arguments['couponid'];
    priceorders = Get.arguments['priceorder'];
    coupondiscount = Get.arguments['discountcoupon'];
    getShippingAddress();
    super.onInit();
  }
}
