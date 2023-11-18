
import 'package:EMOOL/controller/myfavoritecontroller.dart';
import 'package:EMOOL/core/class/handlingdataview.dart';
import 'package:EMOOL/view/widget/myfavorite/customlistfavoriteitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

    Get.put(MyFavoriteController()); 

    
    return Scaffold(
      appBar: AppBar(title: Text("149".tr),),
      body: Container(
        child: GetBuilder<MyFavoriteController>(
            builder: ((controller) => ListView(children: [
                  SizedBox(height: 20) ,
                  HandlingDataView(
                      statusRequest: controller.statusRequest,
                      widget: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.data.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1, childAspectRatio: 3.2),
                        itemBuilder: (context, index) {
                          return  CustomListFavoriteItems(itemsModel: controller.data[index], ) ; 
                        },
                      ))
                ]))),
      ),
    );
  }
}
