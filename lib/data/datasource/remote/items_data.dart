import 'package:EMOOL/core/class/crud.dart';
import 'package:EMOOL/linkapi.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  getData( id ,  userid) async {
    var response = await crud.postData(AppLink.items, {"id" : id.toString() , "usersid" : userid});
    return response.fold((l) => l, (r) => r);
  }
}
