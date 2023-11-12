import 'package:EMOOL/core/class/crud.dart';
import 'package:EMOOL/linkapi.dart';

class OrdersPendingData {
  Crud crud;
  OrdersPendingData(this.crud);
  getData( userid) async {
    var response = await crud.postData(AppLink.pendingorders, {"id": userid});
    return response.fold((l) => l, (r) => r);
  }
  deleteData( orderid) async {
    var response = await crud.postData(AppLink.ordersdelete, {"id": orderid});
    return response.fold((l) => l, (r) => r);
  }
}
