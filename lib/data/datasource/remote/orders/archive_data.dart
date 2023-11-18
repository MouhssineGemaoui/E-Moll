import 'package:EMOOL/core/class/crud.dart';
import 'package:EMOOL/linkapi.dart';

class OrdersArchiveData {
  Crud crud;
  OrdersArchiveData(this.crud);
  getData( userid) async {
    var response = await crud.postData(AppLink.ordersarchive, {"id": userid});
    return response.fold((l) => l, (r) => r);
  }
}
