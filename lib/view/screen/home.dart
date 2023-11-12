import 'package:EMOOL/data/model/settings.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:EMOOL/controller/home_controller.dart';
import 'package:EMOOL/core/class/handlingdataview.dart';
import 'package:EMOOL/core/constant/color.dart';
import 'package:EMOOL/core/constant/routes.dart';
import 'package:EMOOL/core/functions/translatefatabase.dart';
import 'package:EMOOL/data/model/itemsmodel.dart';
import 'package:EMOOL/linkapi.dart';
import 'package:EMOOL/view/widget/home/customcardhome.dart';
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
                          height: MediaQuery.of(context).size.height / 1.5,
                          child: Stack(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 1.5,
                                child: ListView.separated(
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(width: 20),
                                    itemCount: controller.categories.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return CustomCardHome(
                                        title: "A summer surprise",
                                        body: "Cashback 20%",
                                        settingsmodel: settingsModel.fromJson(
                                            controller.settingsdata[0]),
                                      );
                                    }),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: AppColor.white,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
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
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: IconButton(
                                              onPressed: () {
                                                Get.toNamed(
                                                    AppRoute.myfavroite);
                                              },
                                              icon: Icon(Icons.favorite_border,
                                                  size: 30,
                                                  color:
                                                      AppColor.primaryColor)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: ListCategoriesHome()),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 9,
                          decoration: BoxDecoration(color: Color(0xFF279797)),
                        ),
                        ListItemsHome(),
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
                                "${translateDatabase(listdatamodel[index].itemsNameAr!, listdatamodel[index].itemsNameen!, listdatamodel[index].itemsNamefr!)}"),
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
