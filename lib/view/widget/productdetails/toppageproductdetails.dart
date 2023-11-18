import 'package:cached_network_image/cached_network_image.dart';
import 'package:EMOOL/controller/favorite_controller.dart';
import 'package:EMOOL/controller/home_controller.dart';
import 'package:EMOOL/controller/productdetails_controller.dart';
import 'package:EMOOL/core/constant/color.dart';
import 'package:EMOOL/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopProductPageDetails extends GetView<ProductDetailsControllerImp> {
  const TopProductPageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
FavoriteController controllerfav = Get.put(FavoriteController());
    Get.put(ProductDetailsControllerImp());
    HomeControllerImp controllerhome = Get.put(HomeControllerImp());
// ItemsControllerImp controlleritems = Get.put(ItemsControllerImp());
    return Container(
      height: MediaQuery.of(context).size.height / 1.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30))),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height / 1.7,
                  alignment: Alignment.topCenter,
                  child: Hero(
                    tag: "${controller.itemsModel.itemsId!}",
                    child: PageView(
                      children: [
                        CachedNetworkImage(
                          imageUrl:
                              "${AppLink.imagestItems}/${controller.itemsModel.itemsImage!}",
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                        CachedNetworkImage(
                          imageUrl:
                              "${AppLink.imagestItems}/${controller.itemsModel.itemsImageone!}",
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                        CachedNetworkImage(
                          imageUrl:
                              "${AppLink.imagestItems}/${controller.itemsModel.itemsImageto!}",
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ],
                    ),
                  )),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                          controllerhome.refreshPage();
                          // controlleritems.refreshPage();
                        },
                        child: Container(
                          padding: EdgeInsets.all(11),
                          decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            size: 24,
                          ),
                        ),
                      ),
                      InkWell(
                          onTap: () {},
                          child: Container(
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: GetBuilder<FavoriteController>(
                                  builder: (controllerfav) => IconButton(
                                      onPressed: () {
                                        if (controllerfav.isFavorite[controller
                                                .itemsModel.itemsId] ==
                                            "1") {
                                          controllerfav.setFavorite(
                                              controller.itemsModel.itemsId,
                                              "0");
                                          controllerfav.removeFavorite(
                                              controller.itemsModel.itemsId
                                                  .toString());
                                        } else {
                                          controllerfav.setFavorite(
                                              controller.itemsModel.itemsId,
                                              "1");
                                          controllerfav.addFavorite(controller
                                              .itemsModel.itemsId
                                              .toString());
                                        }
                                      },
                                      icon: Icon(
                                        controllerfav.isFavorite[controller
                                                        .itemsModel.itemsId]
                                                    .toString() ==
                                                "1"
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        size: 24,
                                        color:AppColor.primaryColor,
                                      )))))
                    ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
