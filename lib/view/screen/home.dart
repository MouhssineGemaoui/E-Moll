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

import 'package:animated_text_kit/animated_text_kit.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
            //  bottomNavigationBar: GetBuilder<CartController>(
            // builder: (controller) => BottomNavgationBarCart(
            //     controllercoupon: controller.controllercoupon!,
            //     onApplyCoupon: () {
            //       controller.checkcoupon();
            //     },
            //     price: "${cartController.priceorders}",
            //     discount: "${controller.discountcoupon}%",
            //     totalprice: "${controller.getTotalPrice()}")),
    body: GetBuilder<HomeControllerImp>(
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
                          // MainScren(),
                          Container(
                              margin: EdgeInsets.only(
                                  left: 10,),
                              child: ListCategories1Home()),
                              listcategoriesname(),
                          ListCategoriesHome(),
                          listcategoriestitle1(),
                          ListItemsHome(),
                          Stack(
                            children: [
                             
                                 Column(
                                      children: [
                                          Container(
                                            height: 30,
    
                                              child: 
    
                                            TextLiquidFill(text: 'Mek up - Nouveauté & Remises',
                                                      waveColor: Colors.white,
                                                      textStyle: TextStyle(
                                                        height: 1,
                                                        fontSize: 20,fontWeight: FontWeight.bold),
                                                      boxBackgroundColor:AppColor.primaryColor,
                                                      boxHeight: 30,boxWidth: MediaQuery.of(context).size.width / 1,
                                                      loadDuration: Duration(seconds: 3),
                                                      waveDuration: Duration(seconds: 1),
                                                      loadUntil: 0.5,),
                                          ),
                                          ListItemsHomepub1(),
                                      ],
                                  
                                    ),
                                  //    Container(
                                  // margin: EdgeInsets.symmetric(
                                  //     horizontal: 10,vertical: 10),
                                  // child: ListCategories2Home()),
                            ],
                          ),
                          listcategoriestitle2(),
                          ListItemsHome1(),
                                Column(
                                      children: [
                                          Container(
                                            height: 30,
                                              child: 
                                            TextLiquidFill(text: 'Creme - Nouveauté & Remises',
                                                      waveColor: Colors.white,
                                                      textStyle: TextStyle(
                                                        height: 1,
                                                        fontSize: 20,fontWeight: FontWeight.bold),
                                                      boxBackgroundColor: Colors.purple,
                                                      boxHeight: 30,boxWidth: MediaQuery.of(context).size.width / 1,
                                                      loadDuration: Duration(seconds: 20),
                                                      waveDuration: Duration(seconds: 20),
                                                      loadUntil: 0.5,),
                                          ),
                                          ListItemsHomepub2(),
                                      ],
                                    ),
                          listcategoriestitle3(),
                          ListItemsHome2(),
                      
                                Column(
                                      children: [
                                          Container(
                                            height: 30,
    
                                              child: 
    
                                            TextLiquidFill(text: 'Acessoires - Nouveauté & Remises',
                                                      waveColor: Colors.white,
                                                      textStyle: TextStyle(
                                                        height: 1,
                                                        fontSize: 20,fontWeight: FontWeight.bold),
                                                      boxBackgroundColor: Colors.blueAccent,
                                                      boxHeight: 30,boxWidth: MediaQuery.of(context).size.width / 1,
                                                      loadDuration: Duration(seconds: 3),
                                                      waveDuration: Duration(seconds: 1),
                                                      loadUntil: 0.5,),
                                          ),
                                          ListItemsHomepub3(),
                                      ],
                                    ),
                          listcategoriestitle4(),
                          ListItemsHome3(),
                       
                                Column(
                                      children: [
                                          Container(
                                            height: 30,
    
                                              child: 
    
                                            TextLiquidFill(text: 'Parfan - Nouveauté & Remises',
                                                      waveColor: Colors.white,
                                                      textStyle: TextStyle(
                                                        height: 1,
                                                        fontSize: 20,fontWeight: FontWeight.bold),
                                                      boxBackgroundColor: Colors.amber,
                                                      boxHeight: 30,boxWidth: MediaQuery.of(context).size.width / 1,
                                                      loadDuration: Duration(seconds: 3),
                                                      waveDuration: Duration(seconds: 1),
                                                      loadUntil: 0.5,),
                                          ),
                                          ListItemsHomepub4(),
                                      ],
                                  
                                    ),
                          listcategoriestitle5(),
                          ListItemsHome4(),
                        ],
                      ))
                ],
              ))),
    );
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
