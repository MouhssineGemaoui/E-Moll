import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:EMOOL/core/class/statusrequest.dart';
import 'package:EMOOL/core/constant/routes.dart';
import 'package:EMOOL/core/functions/handingdatacontroller.dart';
import 'package:EMOOL/core/services/services.dart';
import 'package:EMOOL/data/datasource/remote/address_data.dart';
import 'package:EMOOL/data/datasource/remote/city/add.dart';
import 'package:EMOOL/data/model/city.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddAddressDetailsController extends GetxController {
  StatusRequest statusRequest = StatusRequest.none;

  AddressData addressData = AddressData(Get.find());
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  MyServices myServices = Get.find();
  List data = [];
  List<SelectedListItem> drobdownlist = [];

  TextEditingController? name;
  TextEditingController? city;
  TextEditingController? numero;
  TextEditingController? email;
  TextEditingController? ville;

  TextEditingController? cityid;
  TextEditingController? cityname;

  String? lat;
  String? long;

  intialData() {
    name = TextEditingController();
    city = TextEditingController();
    email = TextEditingController();
    numero = TextEditingController();
    ville = TextEditingController();
  }

  addAddress() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();

      var response = await addressData.addData(
        myServices.sharedPreferences.getString("id")!,
        name!.text,
        city!.text,
        ville!.text,
        numero!.text,
        email!.text,
      );

      print("=============================== Controller $response ");

      statusRequest = handlingData(response);

      if (StatusRequest.success == statusRequest) {
        // Start backend
        if (response['status'] == "success") {
          Get.offAllNamed(AppRoute.homepage);
        } else {
          statusRequest = StatusRequest.failure;
        }
        // End
      }
      update();
    } else {}
  }

  addAddresscheeckout() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();

      var response = await addressData.addData(
        myServices.sharedPreferences.getString("id")!,
        name!.text,
        city!.text,
        ville!.text,
        numero!.text,
        email!.text,
      );

      print("=============================== Controller $response ");

      statusRequest = handlingData(response);

      if (StatusRequest.success == statusRequest) {
        // Start backend
        if (response['status'] == "success") {
          Get.back();
          Get.snackbar(
            "101".tr,
            "55".tr,
            duration: Duration(seconds: 4),
          );
        } else {
          statusRequest = StatusRequest.failure;
        }
        // End
      }
      update();
    } else {}
  }

  drobdown() async {
    cityData cityview = cityData(Get.find());
    statusRequest = StatusRequest.none;
    update();
    var response = await cityview.get();
    // print("==================Controller $response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List<cityModel> data = [];
        List datalist = response['data'];
        data.addAll(datalist.map((e) => cityModel.fromJson(e)));
        for (int i = 0; 1 < data.length; i++) {
          drobdownlist.add(SelectedListItem(
            name: data[i].cityName!,
            value: data[i].cityId.toString(),
          ));
        }
      } else {
        statusRequest = StatusRequest.failure;
      }
    }

    update();
  }

  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}
