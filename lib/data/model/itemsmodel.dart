class ItemsModel {
  int? itemsId;
  String? itemsName;
  String? itemsNameAr;
  String? itemsDesc;
  String? itemsDescAr;
  String? itemsImage;
  int? itemsCount;
  int? itemsActive;
  int? itemsPrice;
  int? itemsDiscount;
  int? itemsPriceDiscount;
  String? itemsDate;
  int? itemsCat;
  int? categoriesId;
  String? categoriesName;
  String? categoriesNamear;
  String? categoriesImage;
  String? categoriesDatatime;
  int? favorite;

  ItemsModel(
      {this.itemsId ,
      this.itemsName,
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
      this.categoriesId,
      this.categoriesName,
      this.categoriesNamear,
      this.categoriesImage,
      this.categoriesDatatime,
      this.itemsPriceDiscount,
      this.favorite});

  ItemsModel.fromJson(Map<String, dynamic> data) {
    itemsId = data['items_id'];
    itemsName = data['items_name'];
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
    categoriesId = data['categories_id'];
    categoriesName = data['categories_name'];
    categoriesNamear = data['categories_namear'];
    categoriesImage = data['categories_image'];
    categoriesDatatime = data['categories_datatime'];
    itemsPriceDiscount = data['itemspricediscount'];
    favorite = data['favorite'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['items_id'] = this.itemsId;
  //   data['items_name'] = this.itemsName;
  //   data['items_name_ar'] = this.itemsNameAr;
  //   data['items_desc'] = this.itemsDesc;
  //   data['items_desc_ar'] = this.itemsDescAr;
  //   data['items_image'] = this.itemsImage;
  //   data['items_count'] = this.itemsCount;
  //   data['items_active'] = this.itemsActive;
  //   data['items_price'] = this.itemsPrice;
  //   data['items_discount'] = this.itemsDiscount;
  //   data['items_date'] = this.itemsDate;
  //   data['items_cat'] = this.itemsCat;
  //   data['categories_id'] = this.categoriesId;
  //   data['categories_name'] = this.categoriesName;
  //   data['categories_namear'] = this.categoriesNamear;
  //   data['categories_image'] = this.categoriesImage;
  //   data['categories_datatime'] = this.categoriesDatatime;
  //   data['favorite'] = this.favorite;
  //   return data;
  // }
}