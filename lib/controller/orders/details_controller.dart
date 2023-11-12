import 'package:EMOOL/core/class/statusrequest.dart';
import 'package:EMOOL/core/functions/handingdatacontroller.dart';
import 'package:EMOOL/data/datasource/remote/orders/details_data.dart';
import 'package:EMOOL/data/model/cartmodel.dart';
import 'package:EMOOL/data/model/ordersmodel.dart';
import 'package:get/get.dart';

class OrdersDetailsController extends GetxController {
  OrdersDetailsData ordersDetailsData = OrdersDetailsData(Get.find());

  List<CartModel> data = [];

  late StatusRequest statusRequest;

  late  OrdersModel ordersModel;

  // Completer<GoogleMapController>? completercontroller;

  // List<Marker> markers = [];



  // CameraPosition? cameraPosition;

  // intialData() {
  //   if (ordersModel.ordersType == "0") {
  //     cameraPosition = CameraPosition(
  //       target: LatLng(double.parse(ordersModel.addressLat!.toString()),
  //           double.parse(ordersModel.addressLong!.toString())),
  //       zoom: 12.4746,
  //     );
  //     markers.add(Marker(
  //         markerId: MarkerId("1"),
  //         position: LatLng(double.parse(ordersModel.addressLat!.toString()),
  //             double.parse(ordersModel.addressLong!.toString()))));
  //   }
  // }

  @override
  void onInit() {
    ordersModel = Get.arguments['ordersmodel'];
    // intialData();
    getData();
    super.onInit();
  }

  getData() async {
    statusRequest = StatusRequest.loading;
update();
    var response = await ordersDetailsData.getData(ordersModel.ordersId!.toString());

    print("=============================== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success"){
        List listdata = response['data'];
        data.addAll(listdata.map((e) => CartModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }
}
