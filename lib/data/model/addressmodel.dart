class AddressModel {
  int? addressId;
  int? addressUsersid;
  String? addressName;
  String? addressCity;
  String? addressemail;
  String? addressnumero;
  String? addressville;


  AddressModel(
      {this.addressId,
      this.addressUsersid,
      this.addressName,
      this.addressCity,
      this.addressemail,
      this.addressnumero,
      this.addressville,
   
      });

  AddressModel.fromJson(Map<String, dynamic> json) {
    addressId = json['address_id'];
    addressUsersid = json['address_usersid'];
    addressName = json['address_name'];
    addressCity = json['address_city'];
    addressemail = json['address_email'];
    addressnumero = json['address_numero'];
    addressville = json['address_ville'];
   
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address_id'] = this.addressId;
    data['address_usersid'] = this.addressUsersid;
    data['address_name'] = this.addressName;
    data['address_city'] = this.addressCity;
    data['address_email'] = this.addressemail;
    data['address_numero'] = this.addressnumero;
    data['address_ville'] = this.addressville;

    return data;
  }
}