// ignore_for_file: dead_code

import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "157".tr;
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "158".tr;
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "160".tr;
    }
  }

  if (val.isEmpty) {
    return "155".tr;
  }

  if (val.length < min) {
    return "156".tr;"$min";
  }

  if (val.length > max) {
    return "161".tr;
    "$max";
  }
}
