import 'package:ecommercecourse/core/class/crud.dart';
import 'package:ecommercecourse/linkapi.dart';

class CartData {
  Crud crud;
  CartData(this.crud);
  addCart( usersid,  itemsid) async {
    var response = await crud
        .postData(AppLink.cartadd, {"usersid": usersid, "itemsid": itemsid});
    return response.fold((l) => l, (r) => r);
  }

  deleteCart( usersid,  itemsid) async {
    var response = await crud
        .postData(AppLink.cartdelete, {"usersid": usersid, "itemsid": itemsid});
    return response.fold((l) => l, (r) => r);
  }

  getCountCart( usersid,  itemsid) async {
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

  checkCoupon( couponname) async {
    var response =
        await crud.postData(AppLink.checkcoupon, {"couponname": couponname});
    return response.fold((l) => l, (r) => r);
  }
}
