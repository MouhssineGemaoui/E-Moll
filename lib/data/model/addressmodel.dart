class AddressModel {
  int? addressId;
  int? addressUsersid;
  String? addressName;
  String? addressCity;
  String? addressStreet;
  int? addressLat;
  int? addressLong;

  AddressModel(
      {this.addressId,
      this.addressUsersid,
      this.addressName,
      this.addressCity,
      this.addressStreet,
      this.addressLat,
      this.addressLong});

  AddressModel.fromJson(Map<String, dynamic> data) {
    addressId = data['address_id'];
    addressUsersid = data['address_usersid'];
    addressName = data['address_name'];
    addressCity = data['address_city'];
    addressStreet = data['address_street'];
    addressLat = data['address_lat'];
    addressLong = data['address_long'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address_id'] = this.addressId;
    data['address_usersid'] = this.addressUsersid;
    data['address_name'] = this.addressName;
    data['address_city'] = this.addressCity;
    data['address_street'] = this.addressStreet;
    data['address_lat'] = this.addressLat;
    data['address_long'] = this.addressLong;
    return data;
  }
}