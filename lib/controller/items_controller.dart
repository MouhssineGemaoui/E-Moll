import 'package:EMOOL/controller/home_controller.dart';
import 'package:EMOOL/core/class/statusrequest.dart';
import 'package:EMOOL/core/functions/handingdatacontroller.dart';
import 'package:EMOOL/core/services/services.dart';
import 'package:EMOOL/data/datasource/remote/items_data.dart';
import 'package:EMOOL/data/model/itemsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ItemsController extends GetxController {
  intialData();
  changeCat(int val, String catval);
  getItems(String categoryid);
  goToPageProductDetails(ItemsModel itemsModel);
}

class ItemsControllerImp extends SearchMixController {
  List categories = [];
  String? catid;
  int? selectedCat;

  ItemsData testData = ItemsData(Get.find());

  List data = [];

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();

  @override
  void onInit() {
     search = TextEditingController();
    intialData();
       
         update();
    super.onInit();
  }

  
  intialData() {
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedcat'];
    catid = Get.arguments['catid'];
          getItems(catid!);

  }

  changeCat(val, catval) {
    selectedCat = val;
    catid = catval;
    getItems(catid!);
    update();
  }
  
  getItems(categoryid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
update();
    var response = await testData.getData(
        categoryid, myServices.sharedPreferences.getString("id")!);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

    refreshPage() {
    onInit();
  }

  goToPageProductDetails(itemsModel) {
    Get.toNamed("productdetailscat", arguments: {"itemsmodel": itemsModel});
    update();
  }
}