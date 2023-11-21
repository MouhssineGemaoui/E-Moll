

import 'package:EMOOL/core/class/crud.dart';
import 'package:EMOOL/linkapi.dart';

class cityData {
  Crud crud;
  cityData(this.crud);
  get() async {
    var response = await crud.postData(AppLink.cityview, {});
    return response.fold((l) => l, (r) => r);
  }

  add(Map data) async {
    var response =
        await crud.postData(AppLink.cityadd, data,);
    return response.fold((l) => l, (r) => r);
  }

  // delete(Map data) async {
  //   var response = await crud.postData(AppLink.categoriesdelete, data);

  //   return response.fold((l) => l, (r) => r);
  // }
}
