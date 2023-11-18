// import 'package:get/get.dart';
// abstract class viewhomeController extends GetxController {
//   getData();
//   // deleteCategories(id, imagename);
// }

// class viewhomeControllerImp extends viewhomeController {
//   HomeData homedata = HomeData(Get.find());
//   List<Home_model> data = [];

//   StatusRequest statusRequest = StatusRequest.none;

//   @override
//   getData() async {
//     statusRequest = StatusRequest.loading;
//     var response = await homedata.get();
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//         List datalist = response['data'];
//         data.clear();
//         data.addAll(datalist.map((e) => Home_model.fromJson(e)));
//       } else {
//         statusRequest = StatusRequest.failute;
//       }
//     }

//     update();
//   }

//   @override
//   void onInit() {
//     getData();
//     super.onInit();
//   }

//   //?RouteController

//   goToForgetPassword() {
//     Get.toNamed(AppRoutes.Sendemail);
//   }

//   // @override
//   // logouat() {
//   //   myServices.sharedPreferences.clear();
//   //   Get.toNamed(AppRoutes.chesirLogin);
//   // }

//   gotoCategoris() {
//     Get.offAllNamed(AppRoutes.addCategories);
//     throw UnimplementedError();
//   }

//   myback() {
//     Get.offAllNamed(AppRoutes.home);
//     return Future.value(false);
//   }

//   @override
//   gotoeditehome(Home_model home_model) {
//     Get.toNamed(AppRoutes.editeHome, arguments: {"Home_model": home_model});
//   }
// }