import 'package:EMOOL/core/class/crud.dart';
import 'package:EMOOL/linkapi.dart';

class MyFavoriteData {
  Crud crud;
  MyFavoriteData(this.crud);
  getData( id) async {
    var response = await crud.postData(AppLink.favoriteView, {"id": id});
    return response.fold((l) => l, (r) => r);
  }

  deleteData( id) async {
    var response = await crud.postData(AppLink.deletefromfavroite, {"id": id.toString()});
    return response.fold((l) => l, (r) => r);
  }
}
