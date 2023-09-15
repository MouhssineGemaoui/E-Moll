import 'package:ecommercecourse/core/class/crud.dart';
import 'package:ecommercecourse/linkapi.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  getData( int id , int  userid ) async {
    var response = await crud.postData(AppLink.items, {"id" : id as int, "usersid" :userid });
    return response.fold((l) => l, (r) => r);
  }
}
