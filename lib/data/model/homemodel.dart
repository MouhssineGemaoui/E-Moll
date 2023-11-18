class Home_model {
  int? homeId;
  String? homeName;
  String? homeImage;
  String? homeTime;

  Home_model({this.homeId, this.homeName, this.homeImage, this.homeTime});

  Home_model.fromJson(Map<String, dynamic> json) {
    homeId = json['home_id'];
    homeName = json['home_name'];
    homeImage = json['home_image'];
    homeTime = json['home_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['home_id'] = this.homeId;
    data['home_name'] = this.homeName;
    data['home_image'] = this.homeImage;
    data['home_time'] = this.homeTime;
    return data;
  }
}
