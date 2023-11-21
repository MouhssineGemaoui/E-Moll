class settingsModel {
  int? settingsId;
  String? settingsName;
  String? settingsNamaAr;
  String? settingsImage;
  String? settingsDatetime;

  settingsModel(
      {this.settingsId,
      this.settingsName,
      this.settingsNamaAr,
      this.settingsImage,
      this.settingsDatetime});

  settingsModel.fromJson(Map<String, dynamic> json) {
    settingsId = json['settings_id'];
    settingsName = json['settings_name'];
    settingsNamaAr = json['settings_nama_ar'];
    settingsImage = json['settings_image'];
    settingsDatetime = json['settings_datetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['settings_id'] = this.settingsId;
    data['settings_name'] = this.settingsName;
    data['settings_nama_ar'] = this.settingsNamaAr;
    data['settings_image'] = this.settingsImage;
    data['settings_datetime'] = this.settingsDatetime;
    return data;
  }
}
