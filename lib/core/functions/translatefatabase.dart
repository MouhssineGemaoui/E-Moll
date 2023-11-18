import 'package:EMOOL/core/services/services.dart';
import 'package:get/get.dart';

translateDatabase(columnar , columnfr) {
  MyServices myServices = Get.find();

  if (myServices.sharedPreferences.getString("lang") != "ar") {
    return columnfr;
  } else {
    return columnar;
  }
}
