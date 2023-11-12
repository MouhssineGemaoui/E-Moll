import 'package:EMOOL/core/class/crud.dart';
import 'package:EMOOL/linkapi.dart';

class CheckoutData {
  Crud crud;
  CheckoutData(this.crud);
  checkout( data) async {
    var response = await crud.postData(AppLink.checkout, data);
    return response.fold((l) => l, (r) => r);
  }
}
