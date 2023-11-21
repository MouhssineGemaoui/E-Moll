class Categories1Model {
  int? categoriesId;
  String? categoriesName;
  String? categoriesNamaAr;
  String? categoriesImage;
  String? categoriesDatetime;

  Categories1Model(
      {this.categoriesId,
      this.categoriesName,
      this.categoriesNamaAr,
      this.categoriesImage,
      this.categoriesDatetime});

  Categories1Model.fromJson(Map<String, dynamic> json) {
    categoriesId = json['categories_id'];
    categoriesName = json['categories_name'];
    categoriesNamaAr = json['categories_namear'];
    categoriesImage = json['categories_image'];
    categoriesDatetime = json['categories_datetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categories_id'] = this.categoriesId;
    data['categories_name'] = this.categoriesName;
    data['categories_namear'] = this.categoriesNamaAr;
    data['categories_image'] = this.categoriesImage;
    data['categories_datetime'] = this.categoriesDatetime;
    return data;
  }
}
