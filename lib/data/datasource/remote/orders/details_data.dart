import 'package:EMOOL/core/class/crud.dart';
import 'package:EMOOL/linkapi.dart';

class OrdersDetailsData {
  Crud crud;
  OrdersDetailsData(this.crud);
  getData( id) async {
    var response = await crud.postData(AppLink.ordersdetails, {"id": id});
    return response.fold((l) => l, (r) => r);
  }
}
