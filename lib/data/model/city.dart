class cityModel {
  int? cityId;
  String? cityName;
  String? cityNamaAr;
  String? cityImage;


  cityModel(
      {this.cityId,
      this.cityName,
      this.cityNamaAr,
      this.cityImage,
      });

  cityModel.fromJson(Map<String, dynamic> json) {
    cityId = json['city_id'];
    cityName = json['city_name'];
    cityNamaAr = json['city_nama_ar'];
    cityImage = json['city_image'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city_id'] = this.cityId;
    data['city_name'] = this.cityName;
    data['city_nama_ar'] = this.cityNamaAr;
    data['city_image'] = this.cityImage;

    return data;
  }
}
