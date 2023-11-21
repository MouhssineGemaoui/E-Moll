class MyFavoriteModel {
  int? favoriteId;
  int? favoriteUsersid;
  int? favoriteItemsid;
  int? itemsId;
  String? itemsNamefr;
  String? itemsNameAr;
  String? itemsNameen;
  String? itemsDesc;
  String? itemsDescAr;
  String? itemsImage;
  int? itemsCount;
  int? itemsActive;
  int? itemsPrice;
  int? itemsDiscount;
  String? itemsDate;
  int? itemsCat;
  int? usersId;

  MyFavoriteModel(
      {this.favoriteId,
      this.favoriteUsersid,
      this.favoriteItemsid,
      this.itemsId,
      this.itemsNameen ,
      this.itemsNamefr,
      this.itemsNameAr,
      this.itemsDesc,
      this.itemsDescAr,
      this.itemsImage,
      this.itemsCount,
      this.itemsActive,
      this.itemsPrice,
      this.itemsDiscount,
      this.itemsDate,
      this.itemsCat,
      this.usersId});

  MyFavoriteModel.fromJson(Map<String, dynamic> data) {
    favoriteId = data['favorite_id'];
    favoriteUsersid = data['favorite_usersid'];
    favoriteItemsid = data['favorite_itemsid'];
    itemsId = data['items_id'];
    itemsNamefr = data['items_name_fr'];
    itemsNameen = data['items_name_en'];
    itemsNameAr = data['items_name_ar'];
    itemsDesc = data['items_desc'];
    itemsDescAr = data['items_desc_ar'];
    itemsImage = data['items_image'];
    itemsCount = data['items_count'];
    itemsActive = data['items_active'];
    itemsPrice = data['items_price'];
    itemsDiscount = data['items_discount'];
    itemsDate = data['items_date'];
    itemsCat = data['items_cat'];
    usersId = data['users_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['favorite_id'] = this.favoriteId;
    data['favorite_usersid'] = this.favoriteUsersid;
    data['favorite_itemsid'] = this.favoriteItemsid;
    data['items_id'] = this.itemsId;
    data['items_name_fr'] = this.itemsNamefr;
    data['items_name_en'] = this.itemsNameen;
    data['items_name_ar'] = this.itemsNameAr;
    data['items_desc'] = this.itemsDesc;
    data['items_desc_ar'] = this.itemsDescAr;
    data['items_image'] = this.itemsImage;
    data['items_count'] = this.itemsCount;
    data['items_active'] = this.itemsActive;
    data['items_price'] = this.itemsPrice;
    data['items_discount'] = this.itemsDiscount;
    data['items_date'] = this.itemsDate;
    data['items_cat'] = this.itemsCat;
    data['users_id'] = this.usersId;
    return data;
  }
}