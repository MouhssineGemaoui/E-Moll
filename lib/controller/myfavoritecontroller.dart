// ignore_for_file: unused_local_variable

import 'package:EMOOL/core/class/statusrequest.dart';
import 'package:EMOOL/core/functions/handingdatacontroller.dart';
import 'package:EMOOL/core/services/services.dart';
import 'package:EMOOL/data/datasource/remote/myfavorite_data.dart';
import 'package:EMOOL/data/model/myfavorite.dart';
import 'package:get/get.dart';

class MyFavoriteController extends GetxController {
  MyFavoriteData favoriteData = MyFavoriteData(Get.find());

  List<MyFavoriteModel> data = [];

  late StatusRequest statusRequest;
    String? lang;


  MyServices myServices = Get.find();

//  key => id items
//  Value => 1 OR 0

  getData() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData
        .getData(myServices.sharedPreferences.getString("id")!);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List responsedata = response['data'];
        data.addAll(responsedata.map((e) => MyFavoriteModel.fromJson(e)));
        print("data");
        print(data);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }


  deleteFromFavorite( favroiteid) {
    // data.clear();
    // statusRequest = StatusRequest.loading;
    var response = favoriteData.deleteData(favroiteid);
    data.removeWhere((element) => element.favoriteId == favroiteid);
    update();
  }

    goToPageProductDetails(MyFavoriteModel  itemsModel) {
    Get.toNamed("productdetails", arguments: {"MyFavoriteModel": itemsModel});
  }


  @override
  void onInit() {
    getData();
    super.onInit();
  }
}