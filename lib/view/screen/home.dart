import 'package:EMOOL/view/widget/home/listcategoriestitle.dart';
import 'package:EMOOL/view/widget/home/listitemshomePUB.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:EMOOL/controller/home_controller.dart';
import 'package:EMOOL/core/class/handlingdataview.dart';
import 'package:EMOOL/core/constant/color.dart';
import 'package:EMOOL/core/constant/routes.dart';
import 'package:EMOOL/core/functions/translatefatabase.dart';
import 'package:EMOOL/data/model/itemsmodel.dart';
import 'package:EMOOL/linkapi.dart';
import 'package:EMOOL/view/widget/home/listcategorieshome.dart';
import 'package:EMOOL/view/widget/home/listitemshome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
        builder: (controller) => Container(
                child: ListView(
              children: [
                HandlingDataView(
                    statusRequest: controller.statusRequest,
                    widget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius: BorderRadius.circular(30)),
                                child: IconButton(
                                    onPressed: () {
                                      Get.toNamed(AppRoute.search);
                                    },
                                    icon: Icon(
                                      Icons.search,
                                      size: 30,
                                      color: AppColor.primaryColor,
                                    )),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius: BorderRadius.circular(30)),
                                child: IconButton(
                                    onPressed: () {
                                      Get.toNamed(AppRoute.myfavroite);
                                    },
                                    icon: Icon(Icons.favorite_border,
                                        size: 30,
                                        color: AppColor.primaryColor)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10,),
                            child: ListCategories1Home()),
                            listcategoriesname(),
                        ListCategoriesHome(),
                        listcategoriestitle1(),
                        ListItemsHome(),
                        Stack(
                          children: [
                            Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10,),
                                child: ListCategories2Home()),
                                 Container(
                                   margin: EdgeInsets.symmetric(
                                    vertical: 10,),child: ListItemsHomepub1()),
                          ],
                        ),
                        listcategoriestitle2(),
                        ListItemsHome1(),
                        Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, ),
                            child: ListCategories3Home()),
                        listcategoriestitle3(),
                        ListItemsHome2(),
                        Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10,),
                            child: ListCategories4Home()),
                        listcategoriestitle4(),
                        ListItemsHome3(),
                        Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10,),
                        
                            child: ListCategories5Home()),
                        listcategoriestitle5(),
                        ListItemsHome4(),

                      ],
                    ))
              ],
            )));
  }
}

class ListItemsSearch extends GetView<HomeControllerImp> {
  final List<ItemsModel> listdatamodel;
  const ListItemsSearch({Key? key, required this.listdatamodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: listdatamodel.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                controller.goToPageProductDetails(listdatamodel[index]);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Card(
                    child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                          child: CachedNetworkImage(
                              imageUrl:
                                  "${AppLink.imagestItems}/${listdatamodel[index].itemsImage}")),
                      Expanded(
                          flex: 2,
                          child: ListTile(
                            title: Text(
                                "${translateDatabase(listdatamodel[index].itemsNameAr!, listdatamodel[index].itemsNamefr!)}"),
                            subtitle:
                                Text(listdatamodel[index].categoriesName!),
                          )),
                    ],
                  ),
                )),
              ),
            );
          }),
    );
  }
}
