import 'package:ecommercecourse/core/class/crud.dart';
import 'package:ecommercecourse/linkapi.dart';

class CartData {
  Crud crud;
  CartData(this.crud);
  addCart( int usersid,  itemsid) async {
    var response = await crud
        .postData(AppLink.cartadd, {"usersid": usersid.toInt(), "itemsid": itemsid});
    return response.fold((l) => l, (r) => r);
  }

  deleteCart(int usersid,  itemsid) async {
    var response = await crud
        .postData(AppLink.cartdelete, {"usersid": usersid.toInt(), "itemsid": itemsid});
    return response.fold((l) => l, (r) => r);
  }

  getCountCart(  usersid,  itemsid) async {
    var response = await crud.postData(
        AppLink.cartgetcountitems, {"usersid": usersid, "itemsid": itemsid});
    return response.fold((l) => l, (r) => r);
  }

  viewCart( usersid) async {
    var response = await crud.postData(AppLink.cartview, {
      "usersid": usersid,
    });
    return response.fold((l) => l, (r) => r);
  }
}
