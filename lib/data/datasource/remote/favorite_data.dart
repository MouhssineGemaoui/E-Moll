import 'package:EMOOL/core/class/crud.dart';
import 'package:EMOOL/linkapi.dart';

class FavoriteData {
  Crud crud;
  FavoriteData(this.crud);
  addFavorite( usersid,  itemsid) async {
    var response = await crud.postData(
        AppLink.favoriteAdd, {"usersid": usersid, "itemsid": itemsid});
    return response.fold((l) => l, (r) => r);
  }

  removeFavorite( usersid,  itemsid) async {
    var response = await crud.postData(
        AppLink.favoriteRemove, {"usersid": usersid, "itemsid": itemsid});
    return response.fold((l) => l, (r) => r);
  }
}
