// ignore_for_file: unused_local_variable

import 'package:EMOOL/controller/address/view_controller.dart';
import 'package:EMOOL/core/class/handlingdataview.dart';
import 'package:EMOOL/core/constant/color.dart';
import 'package:EMOOL/core/constant/routes.dart';
import 'package:EMOOL/data/model/addressmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressView extends StatelessWidget {
  const AddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddressViewController controller = Get.put(AddressViewController());
    return Scaffold(
        appBar: AppBar(
          title:  Text('74'.tr),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.toNamed(AppRoute.addressadddetails);
            },
            child: Icon(Icons.add)),
        body: GetBuilder<AddressViewController>(
          builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Container(
              child: ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: (context, i) {
                  return CardAddress(
                    addressModel: controller.data[i],
                    onDelete: () {
                      controller.deleteAddress(controller.data[i].addressId!);
                    },
                  );
                },
              ),
            ),
          ),
        ));
  }
}

class CardAddress extends StatelessWidget {
  final AddressModel addressModel;
  final void Function()? onDelete;
  const CardAddress({Key? key, required this.addressModel, this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          padding: EdgeInsets.all(10),
          child: ListTile(
            leading: Icon(Icons.location_on , color: AppColor.primaryColor,),
            title: Text(addressModel.addressName!),
            subtitle: Text(
                "${addressModel.addressnumero!} ${addressModel.addressemail}"),
            trailing: IconButton(
                onPressed: onDelete, icon: Icon(Icons.delete , color: Colors.red,)),
          )),
    );
  }
}
