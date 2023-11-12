import 'package:cached_network_image/cached_network_image.dart';
import 'package:EMOOL/controller/home_controller.dart';
import 'package:EMOOL/core/class/handlingdataview.dart';
import 'package:EMOOL/core/constant/routes.dart';
import 'package:EMOOL/core/functions/translatefatabase.dart';
import 'package:EMOOL/data/model/itemsmodel.dart';
import 'package:EMOOL/linkapi.dart';
import 'package:EMOOL/view/widget/customappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class search extends StatefulWidget {
  const search({super.key});


  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return 
    GetBuilder<HomeControllerImp>(
        builder: ((controller) => Scaffold(
          appBar: AppBar(title: Text("150".tr)),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.search),
            onPressed: () {
            controller.onSearchItems();
          },),
              body: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),

             child:      RefreshIndicator(
                    onRefresh: () async {
                      await Future.delayed(
                        Duration(seconds: 1),
                      );
                      controller.searchData();
                      setState(() {});
                    },
                    
                  child: ListView(children: [
                    CustomAppBar(
                  mycontroller: controller.search!,
                  titleappbar: "151".tr,
                  // onPressedIcon: () {},
                  onPressedSearch: () {
                    controller.onSearchItems();
                  },
                  onChanged: (val) {
                    controller.checkSearch(val);
                  },
                  onPressedIconFavorite: () {
                    Get.toNamed(AppRoute.myfavroite);
                  },
                ),
                    SizedBox(height: 10),
                    // ListCategorysearch(),
                    HandlingDataView(
                        statusRequest: controller.statusRequest,
                        widget: controller.isSearch
                            ? ListSearch(
                                listdatasearch: controller.listdata)
                              
                            : ListSearch(  listdatasearch: controller.listdata))

                  ])),
            ))));
  }
}

class ListSearch extends GetView<HomeControllerImp> {
  final List<ItemsModel> listdatasearch;
  const ListSearch({super.key, required this.listdatasearch});

  @override
  Widget build(BuildContext context) {
    return           Container(
      child: ListView.builder(
          itemCount: listdatasearch.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                controller.goToPageProductDetails(listdatasearch[index]);
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
                                  "${AppLink.imagestItems}/${listdatasearch[index].itemsImage}")),
                      Expanded(
                          flex: 2,
                          child: ListTile(
                            title: Text("${translateDatabase(listdatasearch[index].itemsNameAr! , listdatasearch[index].itemsNameen!, listdatasearch[index].itemsNamefr!)}"),
                            subtitle:
                                Text(listdatasearch[index].categoriesName!),
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
