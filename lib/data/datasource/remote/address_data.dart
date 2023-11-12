import 'package:EMOOL/core/class/crud.dart';
import 'package:EMOOL/linkapi.dart';

class AddressData {
  Crud crud;
  AddressData(this.crud);
  getData( usersid) async {
    var response =
        await crud.postData(AppLink.addressView, {"usersid": usersid});
    return response.fold((l) => l, (r) => r);
  }

  addData( usersid, String name, String city,  String ville, String  numero, String email  ) async {
    var response = await crud.postData(AppLink.addressAdd, {
      "usersid": usersid,
      "name": name,
      "city": city,
      "ville": ville,
      "numero": numero, 
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }

  deleteData( addressid) async {
    var response =
        await crud.postData(AppLink.addressDelete, {"addressid": addressid.toString()});
    return response.fold((l) => l, (r) => r);
  }
}
