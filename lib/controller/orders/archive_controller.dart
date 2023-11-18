import 'package:EMOOL/core/class/statusrequest.dart';
import 'package:EMOOL/core/functions/handingdatacontroller.dart';
import 'package:EMOOL/core/services/services.dart';
import 'package:EMOOL/data/datasource/remote/orders/archive_data.dart';
import 'package:EMOOL/data/model/ordersmodel.dart';
import 'package:get/get.dart';

class OrdersArchiveController extends GetxController {
  OrdersArchiveData ordersArchiveData = OrdersArchiveData(Get.find());

  List<OrdersModel> data = [];

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();

  
   printOrderType( val) {
    if (val == 0) {
      return "56".tr;
    } else {
      return "57".tr;
    }
  }

   printPaymentMethod( val) {
    if (val == 0) {
      return "58".tr;
    } else {
      return "59".tr;
    }
  }

   printOrderStatus( val) {
    if (val == 0) {
      return "60".tr;
    } else if (val == 1) {
      return "61".tr;
    } else if (val == 2) {
      return "62".tr;
    }  else if (val == 3) {
      return "63".tr;
    } else {
      return "64".tr;
    }
  }

  getOrders() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await ordersArchiveData
        .getData(myServices.sharedPreferences.getString("id")!);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'].toString() == "success") {
        List listdata = response['data'];
        data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  refrehOrder() {
    getOrders();
  }

  @override
  void onInit() {
    getOrders();
    super.onInit();
  }
}
