import 'package:EMOOL/controller/favorite_controller.dart';
import 'package:EMOOL/controller/home_controller.dart';
import 'package:EMOOL/controller/items_controller.dart';
import 'package:EMOOL/core/class/handlingdataview.dart';
import 'package:EMOOL/data/model/itemsmodel.dart';
import 'package:EMOOL/view/screen/home.dart';
import 'package:EMOOL/view/widget/items/customlistitems.dart';
import 'package:EMOOL/view/widget/items/listcategoirseitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    FavoriteController controllerFav = Get.put(FavoriteController());
HomeControllerImp  controllerhome = Get.put(HomeControllerImp());
    return Scaffold(  appBar: AppBar(
          title: Text("148".tr),
          leading: IconButton(onPressed: () {
            Get.back();
            controllerhome.refreshPage();
          }, icon: Icon(Icons.arrow_back_ios)),
        ),
      body: Container(
        child: ListView(children: [
        
          const ListCategoriesItems(),
          Container(
            margin: EdgeInsets.only(bottom: 12),
width: double.infinity,
height: 5,
decoration: BoxDecoration(color: Color(0xFF279797)),
),

          GetBuilder<ItemsControllerImp>(
              builder: (controller) => HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget: !controller.isSearch
                      ? GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: controller.data.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 0.88),
                          itemBuilder: (BuildContext context, index) {
                            controllerFav.isFavorite[controller.data[index]
                                    ['items_id']] =
                                controller.data[index]['favorite'];
                            return  CustomListItems(
                                  itemsModel: ItemsModel.fromJson(
                                      controller.data[index]),
                            );
                          })
                      : ListItemsSearch(listdatamodel: controller.listdata)))
        ]),
      ),
    );
  }
}






