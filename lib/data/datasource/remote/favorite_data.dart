import 'package:ecommercecourse/core/class/crud.dart';
import 'package:ecommercecourse/linkapi.dart';

class FavoriteData {
  Crud crud;
  FavoriteData(this.crud);
  addFavorite( int usersid, int itemsid) async {
    var response = await crud.postData(
        AppLink.favoriteAdd, {"userid": usersid, "itemsid": itemsid});
    return response.fold((l) => l, (r) => r);
  }

  removeFavorite( usersid,  itemsid) async {
    var response = await crud.postData(
        AppLink.favoriteRemove, {"userid": usersid, "itemsid": itemsid});
    return response.fold((l) => l, (r) => r);
  }
}
