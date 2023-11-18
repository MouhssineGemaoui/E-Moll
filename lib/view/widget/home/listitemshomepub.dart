// ignore_for_file: unused_local_variable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:EMOOL/controller/favorite_controller.dart';
import 'package:EMOOL/controller/home_controller.dart';
import 'package:EMOOL/core/constant/color.dart';
import 'package:EMOOL/core/functions/translatefatabase.dart';
import 'package:EMOOL/data/model/itemsmodel.dart';
import 'package:EMOOL/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItemsHomepub extends GetView<HomeControllerImp> {
  const ListItemsHomepub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    FavoriteController controllerFav = Get.put(FavoriteController());
    return Container(
      child: SizedBox(
        height: 170,
        width: MediaQuery.of(context).size.width / 1,

        child: ListView.builder(
            itemCount: controller.items.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              return ItemsHomepub(
                  itemsModel: ItemsModel.fromJson(controller.items[i]));
            }),
        // GridView.builder(
        //     shrinkWrap: true,
        //     physics: const NeverScrollableScrollPhysics(),
        //     itemCount: controller.items.length,
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 2, childAspectRatio: 0.88),
        //     itemBuilder: (BuildContext context, index) {
        //       return Container(
        //         child:       );
        //     }),
        // ]),
      ),
    );
  }
}

class ItemsHomepub extends GetView<HomeControllerImp> {
  final ItemsModel itemsModel;
  const ItemsHomepub({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    // ProductDetailsControllerImp controlleradd =
    //  Get.put(ProductDetailsControllerImp());
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return Column(
      children: [
              if (itemsModel.itemsCat == 6)
        Container(
           width: MediaQuery.of(context).size.width /3,
          margin: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          )),
          child: InkWell(
              onTap: () {
                controller.goToPageProductDetails(itemsModel);
              },
              child: Card(
                child: Stack(
                  children: [
                    if (itemsModel.itemsCat == 6)
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )), // padding: const EdgeInsets.all(10),
                        child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(height: 10,),
                              Hero(
                                tag: "${itemsModel.itemsId}",
                                child: Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width /3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                      image: DecorationImage(
                                          image: CachedNetworkImageProvider(
                                            AppLink.imagestItems +
                                                "/" +
                                                itemsModel.itemsImage!,
                                          ),
                                          filterQuality: FilterQuality.high,
                                          fit: BoxFit.fill)),
                                ),
                              ),

                              Container(
                                margin: EdgeInsetsDirectional.symmetric(
                                  horizontal: 5,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${translateDatabase(itemsModel.itemsNameAr, itemsModel.itemsNamefr)}',
                                          style: GoogleFonts.notoSans(
                                            color: Color(0xFF333333),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 1),
                                          child: Row(
                                            children: [
                                              Text(
                                                'In stock',
                                                style: GoogleFonts.karla(
                                                  color: Color(0xFF525252),
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.normal,
                                                  height: 0.33,
                                                ),
                                              ),
                                              Text(
                                                " (\ ${itemsModel.itemsCount} \)",
                                                style: GoogleFonts.karla(
                                                  color: Color(0xFF525252),
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.normal,
                                                  height: 0.33,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Text(
                                                "${itemsModel.itemsPriceDiscount}",
                                                style: GoogleFonts.notoSans(
                                                  color: Color(0xFF333333),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                "127".tr,
                                                style: GoogleFonts.notoSans(
                                                  color: Color(0xFF333333),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 7),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 3,
                                                            // top: -8,
                                                            child: Container(
                                                              child: Row(
                                                                children: [
                                                                  if (itemsModel
                                                                          .itemsDiscount !=
                                                                      0)
                                                                    Text(
                                                                      "${itemsModel.itemsPrice}",
                                                                      style: GoogleFonts
                                                                          .notoSans(
                                                                        color: Color
                                                                            .fromARGB(
                                                                                255,
                                                                                121,
                                                                                121,
                                                                                121),
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .normal,
                                                                        height:
                                                                            0.91,
                                                                      ),
                                                                    ),
                                                                  if (itemsModel
                                                                          .itemsDiscount !=
                                                                      0)
                                                                    Text(
                                                                      "127".tr,
                                                                      style: GoogleFonts
                                                                          .josefinSans(
                                                                        color: Color
                                                                            .fromARGB(
                                                                                255,
                                                                                117,
                                                                                117,
                                                                                117),
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .normal,
                                                                        height:
                                                                            0.91,
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          if (itemsModel
                                                                  .itemsDiscount !=
                                                              0)
                                                            Positioned(
                                                              left: 9,
                                                              top: 3,
                                                              child: Transform(
                                                                transform: Matrix4
                                                                    .identity()
                                                                  ..translate(
                                                                      0.0, 0.0)
                                                                  ..rotateZ(0.00),
                                                                child: Container(
                                                                  width: 25.94,
                                                                  decoration:
                                                                      ShapeDecoration(
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      side:
                                                                          BorderSide(
                                                                        width: 0.5,
                                                                        strokeAlign:
                                                                            BorderSide
                                                                                .strokeAlignCenter,
                                                                        color: Color
                                                                            .fromARGB(
                                                                                255,
                                                                                121,
                                                                                121,
                                                                                121),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Container(
                                     
                                    //   child: GetBuilder<FavoriteController>(
                                    //       builder: (controller) => IconButton(
                                    //           onPressed: () {
                                    //             if (controller.isFavorite[
                                    //                         itemsModel.itemsId]
                                    //                     .toString() ==
                                    //                 "1") {
                                    //               controller.setFavorite(
                                    //                   itemsModel.itemsId, "0");
                                    //               controller.removeFavorite(
                                    //                   itemsModel.itemsId
                                    //                       .toString());
                                    //             } else {
                                    //               controller.setFavorite(
                                    //                   itemsModel.itemsId, "1");
                                    //               controller.addFavorite(itemsModel
                                    //                   .itemsId
                                    //                   .toString());
                                    //             }
                                    //           },
                                    //           icon: Icon(
                                    //             controller.isFavorite[
                                    //                             itemsModel.itemsId]
                                    //                         .toString() ==
                                    //                     "1"
                                    //                 ? Icons.favorite
                                    //                 : Icons
                                    //                     .favorite_border_outlined,
                                    //             color: AppColor.primaryColor,
                                    //             size: 20,
                                    //           ))),
                                    // )
                                  ],
                                ),
                              ),
                            ]),
                      ),
                   
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           if (itemsModel.itemsDiscount != 0)
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 20,
                            width: 30,
                            decoration: BoxDecoration(
                                color: AppColor.primaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text("-\ ${itemsModel.itemsDiscount}\%",
                                  style: TextStyle(
                                      color: AppColor.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "sans")),
                            ),
                          ),
                        ],
                      )
                  ],
                ),
              )),
        ),
      ],
    );
  }
}













class ListItemsHomepub1 extends GetView<HomeControllerImp> {
  const ListItemsHomepub1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    FavoriteController controllerFav = Get.put(FavoriteController());
    return Container(
      child: SizedBox(
      height: 170,

        width: MediaQuery.of(context).size.width / 1,

        child: ListView.builder(
            itemCount: controller.items.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              return ItemsHomepub1(
                  itemsModel: ItemsModel.fromJson(controller.items[i]));
            }),
        // GridView.builder(
        //     shrinkWrap: true,
        //     physics: const NeverScrollableScrollPhysics(),
        //     itemCount: controller.items.length,
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 2, childAspectRatio: 0.88),
        //     itemBuilder: (BuildContext context, index) {
        //       return Container(
        //         child:       );
        //     }),
        // ]),
      ),
    );
  }
}

class ItemsHomepub1 extends GetView<HomeControllerImp> {
  final ItemsModel itemsModel;
  const ItemsHomepub1({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    // ProductDetailsControllerImp controlleradd =
    //  Get.put(ProductDetailsControllerImp());
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return Column(
      children: [
              if (itemsModel.itemsCat == 8)
        Container(
           width: MediaQuery.of(context).size.width /3,
          margin: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          )),
          child: InkWell(
              onTap: () {
                controller.goToPageProductDetails(itemsModel);
              },
              child: Card(
                child: Stack(
                  children: [
                    if (itemsModel.itemsCat == 8)
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )), // padding: const EdgeInsets.all(10),
                        child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(height: 10,),
                              Hero(
                                tag: "${itemsModel.itemsId}",
                                child: Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width /3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                      image: DecorationImage(
                                          image: CachedNetworkImageProvider(
                                            AppLink.imagestItems +
                                                "/" +
                                                itemsModel.itemsImage!,
                                          ),
                                          filterQuality: FilterQuality.high,
                                          fit: BoxFit.fill)),
                                ),
                              ),

                              Container(
                                margin: EdgeInsetsDirectional.symmetric(
                                  horizontal: 5,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${translateDatabase(itemsModel.itemsNameAr,  itemsModel.itemsNamefr)}',
                                          style: GoogleFonts.notoSans(
                                            color: Color(0xFF333333),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 1),
                                          child: Row(
                                            children: [
                                              Text(
                                                'In stock',
                                                style: GoogleFonts.karla(
                                                  color: Color(0xFF525252),
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.normal,
                                                  height: 0.33,
                                                ),
                                              ),
                                              Text(
                                                " (\ ${itemsModel.itemsCount} \)",
                                                style: GoogleFonts.karla(
                                                  color: Color(0xFF525252),
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.normal,
                                                  height: 0.33,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Text(
                                                "${itemsModel.itemsPriceDiscount}",
                                                style: GoogleFonts.notoSans(
                                                  color: Color(0xFF333333),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                "127".tr,
                                                style: GoogleFonts.notoSans(
                                                  color: Color(0xFF333333),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 7),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 3,
                                                            // top: -8,
                                                            child: Container(
                                                              child: Row(
                                                                children: [
                                                                  if (itemsModel
                                                                          .itemsDiscount !=
                                                                      0)
                                                                    Text(
                                                                      "${itemsModel.itemsPrice}",
                                                                      style: GoogleFonts
                                                                          .notoSans(
                                                                        color: Color
                                                                            .fromARGB(
                                                                                255,
                                                                                121,
                                                                                121,
                                                                                121),
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .normal,
                                                                        height:
                                                                            0.91,
                                                                      ),
                                                                    ),
                                                                  if (itemsModel
                                                                          .itemsDiscount !=
                                                                      0)
                                                                    Text(
                                                                      "127".tr,
                                                                      style: GoogleFonts
                                                                          .josefinSans(
                                                                        color: Color
                                                                            .fromARGB(
                                                                                255,
                                                                                117,
                                                                                117,
                                                                                117),
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .normal,
                                                                        height:
                                                                            0.91,
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          if (itemsModel
                                                                  .itemsDiscount !=
                                                              0)
                                                            Positioned(
                                                              left: 9,
                                                              top: 3,
                                                              child: Transform(
                                                                transform: Matrix4
                                                                    .identity()
                                                                  ..translate(
                                                                      0.0, 0.0)
                                                                  ..rotateZ(0.00),
                                                                child: Container(
                                                                  width: 25.94,
                                                                  decoration:
                                                                      ShapeDecoration(
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      side:
                                                                          BorderSide(
                                                                        width: 0.5,
                                                                        strokeAlign:
                                                                            BorderSide
                                                                                .strokeAlignCenter,
                                                                        color: Color
                                                                            .fromARGB(
                                                                                255,
                                                                                121,
                                                                                121,
                                                                                121),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Container(
                                    //   alignment: Alignment.bottomCenter,
                                    //   child: GetBuilder<FavoriteController>(
                                    //       builder: (controller) => IconButton(
                                    //           onPressed: () {
                                    //             if (controller.isFavorite[
                                    //                         itemsModel.itemsId]
                                    //                     .toString() ==
                                    //                 "1") {
                                    //               controller.setFavorite(
                                    //                   itemsModel.itemsId, "0");
                                    //               controller.removeFavorite(
                                    //                   itemsModel.itemsId
                                    //                       .toString());
                                    //             } else {
                                    //               controller.setFavorite(
                                    //                   itemsModel.itemsId, "1");
                                    //               controller.addFavorite(itemsModel
                                    //                   .itemsId
                                    //                   .toString());
                                    //             }
                                    //           },
                                    //           icon: Icon(
                                    //             controller.isFavorite[
                                    //                             itemsModel.itemsId]
                                    //                         .toString() ==
                                    //                     "1"
                                    //                 ? Icons.favorite
                                    //                 : Icons
                                    //                     .favorite_border_outlined,
                                    //             color: AppColor.primaryColor,
                                    //             size: 20,
                                    //           ))),
                                    // )
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    if (itemsModel.itemsDiscount != 0)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 20,
                            width: 30,
                            decoration: BoxDecoration(
                                color: AppColor.primaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text("-\ ${itemsModel.itemsDiscount}\%",
                                  style: TextStyle(
                                      color: AppColor.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "sans")),
                            ),
                          ),
                        ],
                      )
                  ],
                ),
              )),
        ),
      ],
    );
  }
}













class ListItemsHomepub2 extends GetView<HomeControllerImp> {
  const ListItemsHomepub2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    FavoriteController controllerFav = Get.put(FavoriteController());
    return Container(
      child: SizedBox(
      height: 170,

        width: MediaQuery.of(context).size.width / 1,

        child: ListView.builder(
            itemCount: controller.items.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              return ItemsHomepub2(
                  itemsModel: ItemsModel.fromJson(controller.items[i]));
            }),
        // GridView.builder(
        //     shrinkWrap: true,
        //     physics: const NeverScrollableScrollPhysics(),
        //     itemCount: controller.items.length,
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 2, childAspectRatio: 0.88),
        //     itemBuilder: (BuildContext context, index) {
        //       return Container(
        //         child:       );
        //     }),
        // ]),
      ),
    );
  }
}

class ItemsHomepub2 extends GetView<HomeControllerImp> {
  final ItemsModel itemsModel;
  const ItemsHomepub2({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    // ProductDetailsControllerImp controlleradd =
    //  Get.put(ProductDetailsControllerImp());
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return Column(
      children: [
              if (itemsModel.itemsCat == 12)
        Container(
           width: MediaQuery.of(context).size.width /3,
          margin: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          )),
          child: InkWell(
              onTap: () {
                controller.goToPageProductDetails(itemsModel);
              },
              child: Card(
                child: Stack(
                  children: [
                    if (itemsModel.itemsCat == 12)
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )), // padding: const EdgeInsets.all(10),
                        child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(height: 10,),
                              Hero(
                                tag: "${itemsModel.itemsId}",
                                child: Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width /3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                      image: DecorationImage(
                                          image: CachedNetworkImageProvider(
                                            AppLink.imagestItems +
                                                "/" +
                                                itemsModel.itemsImage!,
                                          ),
                                          filterQuality: FilterQuality.high,
                                          fit: BoxFit.fill)),
                                ),
                              ),

                              Container(
                                margin: EdgeInsetsDirectional.symmetric(
                                  horizontal: 5,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${translateDatabase(itemsModel.itemsNameAr, itemsModel.itemsNamefr)}',
                                          style: GoogleFonts.notoSans(
                                            color: Color(0xFF333333),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 1),
                                          child: Row(
                                            children: [
                                              Text(
                                                'In stock',
                                                style: GoogleFonts.karla(
                                                  color: Color(0xFF525252),
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.normal,
                                                  height: 0.33,
                                                ),
                                              ),
                                              Text(
                                                " (\ ${itemsModel.itemsCount} \)",
                                                style: GoogleFonts.karla(
                                                  color: Color(0xFF525252),
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.normal,
                                                  height: 0.33,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Text(
                                                "${itemsModel.itemsPriceDiscount}",
                                                style: GoogleFonts.notoSans(
                                                  color: Color(0xFF333333),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                "127".tr,
                                                style: GoogleFonts.notoSans(
                                                  color: Color(0xFF333333),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 7),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 3,
                                                            // top: -8,
                                                            child: Container(
                                                              child: Row(
                                                                children: [
                                                                  if (itemsModel
                                                                          .itemsDiscount !=
                                                                      0)
                                                                    Text(
                                                                      "${itemsModel.itemsPrice}",
                                                                      style: GoogleFonts
                                                                          .notoSans(
                                                                        color: Color
                                                                            .fromARGB(
                                                                                255,
                                                                                121,
                                                                                121,
                                                                                121),
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .normal,
                                                                        height:
                                                                            0.91,
                                                                      ),
                                                                    ),
                                                                  if (itemsModel
                                                                          .itemsDiscount !=
                                                                      0)
                                                                    Text(
                                                                      "127".tr,
                                                                      style: GoogleFonts
                                                                          .josefinSans(
                                                                        color: Color
                                                                            .fromARGB(
                                                                                255,
                                                                                117,
                                                                                117,
                                                                                117),
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .normal,
                                                                        height:
                                                                            0.91,
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          if (itemsModel
                                                                  .itemsDiscount !=
                                                              0)
                                                            Positioned(
                                                              left: 9,
                                                              top: 3,
                                                              child: Transform(
                                                                transform: Matrix4
                                                                    .identity()
                                                                  ..translate(
                                                                      0.0, 0.0)
                                                                  ..rotateZ(0.00),
                                                                child: Container(
                                                                  width: 25.94,
                                                                  decoration:
                                                                      ShapeDecoration(
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      side:
                                                                          BorderSide(
                                                                        width: 0.5,
                                                                        strokeAlign:
                                                                            BorderSide
                                                                                .strokeAlignCenter,
                                                                        color: Color
                                                                            .fromARGB(
                                                                                255,
                                                                                121,
                                                                                121,
                                                                                121),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Container(
                                    //   alignment: Alignment.bottomCenter,
                                    //   child: GetBuilder<FavoriteController>(
                                    //       builder: (controller) => IconButton(
                                    //           onPressed: () {
                                    //             if (controller.isFavorite[
                                    //                         itemsModel.itemsId]
                                    //                     .toString() ==
                                    //                 "1") {
                                    //               controller.setFavorite(
                                    //                   itemsModel.itemsId, "0");
                                    //               controller.removeFavorite(
                                    //                   itemsModel.itemsId
                                    //                       .toString());
                                    //             } else {
                                    //               controller.setFavorite(
                                    //                   itemsModel.itemsId, "1");
                                    //               controller.addFavorite(itemsModel
                                    //                   .itemsId
                                    //                   .toString());
                                    //             }
                                    //           },
                                    //           icon: Icon(
                                    //             controller.isFavorite[
                                    //                             itemsModel.itemsId]
                                    //                         .toString() ==
                                    //                     "1"
                                    //                 ? Icons.favorite
                                    //                 : Icons
                                    //                     .favorite_border_outlined,
                                    //             color: AppColor.primaryColor,
                                    //             size: 20,
                                    //           ))),
                                    // )
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    if (itemsModel.itemsDiscount != 0)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 20,
                            width: 30,
                            decoration: BoxDecoration(
                                color: AppColor.primaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text("-\ ${itemsModel.itemsDiscount}\%",
                                  style: TextStyle(
                                      color: AppColor.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "sans")),
                            ),
                          ),
                        ],
                      )
                  ],
                ),
              )),
        ),
      ],
    );
  }
}













class ListItemsHomepub3 extends GetView<HomeControllerImp> {
  const ListItemsHomepub3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    FavoriteController controllerFav = Get.put(FavoriteController());
    return Container(
      child: SizedBox(
      height: 170,

        width: MediaQuery.of(context).size.width / 1,

        child: ListView.builder(
            itemCount: controller.items.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              return ItemsHomepub3(
                  itemsModel: ItemsModel.fromJson(controller.items[i]));
            }),
        // GridView.builder(
        //     shrinkWrap: true,
        //     physics: const NeverScrollableScrollPhysics(),
        //     itemCount: controller.items.length,
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 2, childAspectRatio: 0.88),
        //     itemBuilder: (BuildContext context, index) {
        //       return Container(
        //         child:       );
        //     }),
        // ]),
      ),
    );
  }
}

class ItemsHomepub3 extends GetView<HomeControllerImp> {
  final ItemsModel itemsModel;
  const ItemsHomepub3({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    // ProductDetailsControllerImp controlleradd =
    //  Get.put(ProductDetailsControllerImp());
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return Column(
      children: [
              if (itemsModel.itemsCat == 17)
        Container(
           width: MediaQuery.of(context).size.width /3,
          margin: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          )),
          child: InkWell(
              onTap: () {
                controller.goToPageProductDetails(itemsModel);
              },
              child: Card(
                child: Stack(
                  children: [
                    if (itemsModel.itemsCat == 17)
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )), // padding: const EdgeInsets.all(10),
                        child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(height: 10,),
                              Hero(
                                tag: "${itemsModel.itemsId}",
                                child: Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width /3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                      image: DecorationImage(
                                          image: CachedNetworkImageProvider(
                                            AppLink.imagestItems +
                                                "/" +
                                                itemsModel.itemsImage!,
                                          ),
                                          filterQuality: FilterQuality.high,
                                          fit: BoxFit.fill)),
                                ),
                              ),

                              Container(
                                margin: EdgeInsetsDirectional.symmetric(
                                  horizontal: 5,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${translateDatabase(itemsModel.itemsNameAr, itemsModel.itemsNamefr)}',
                                          style: GoogleFonts.notoSans(
                                            color: Color(0xFF333333),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 1),
                                          child: Row(
                                            children: [
                                              Text(
                                                'In stock',
                                                style: GoogleFonts.karla(
                                                  color: Color(0xFF525252),
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.normal,
                                                  height: 0.33,
                                                ),
                                              ),
                                              Text(
                                                " (\ ${itemsModel.itemsCount} \)",
                                                style: GoogleFonts.karla(
                                                  color: Color(0xFF525252),
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.normal,
                                                  height: 0.33,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Text(
                                                "${itemsModel.itemsPriceDiscount}",
                                                style: GoogleFonts.notoSans(
                                                  color: Color(0xFF333333),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                "127".tr,
                                                style: GoogleFonts.notoSans(
                                                  color: Color(0xFF333333),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 7),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 3,
                                                            // top: -8,
                                                            child: Container(
                                                              child: Row(
                                                                children: [
                                                                  if (itemsModel
                                                                          .itemsDiscount !=
                                                                      0)
                                                                    Text(
                                                                      "${itemsModel.itemsPrice}",
                                                                      style: GoogleFonts
                                                                          .notoSans(
                                                                        color: Color
                                                                            .fromARGB(
                                                                                255,
                                                                                121,
                                                                                121,
                                                                                121),
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .normal,
                                                                        height:
                                                                            0.91,
                                                                      ),
                                                                    ),
                                                                  if (itemsModel
                                                                          .itemsDiscount !=
                                                                      0)
                                                                    Text(
                                                                      "127".tr,
                                                                      style: GoogleFonts
                                                                          .josefinSans(
                                                                        color: Color
                                                                            .fromARGB(
                                                                                255,
                                                                                117,
                                                                                117,
                                                                                117),
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .normal,
                                                                        height:
                                                                            0.91,
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          if (itemsModel
                                                                  .itemsDiscount !=
                                                              0)
                                                            Positioned(
                                                              left: 9,
                                                              top: 3,
                                                              child: Transform(
                                                                transform: Matrix4
                                                                    .identity()
                                                                  ..translate(
                                                                      0.0, 0.0)
                                                                  ..rotateZ(0.00),
                                                                child: Container(
                                                                  width: 25.94,
                                                                  decoration:
                                                                      ShapeDecoration(
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      side:
                                                                          BorderSide(
                                                                        width: 0.5,
                                                                        strokeAlign:
                                                                            BorderSide
                                                                                .strokeAlignCenter,
                                                                        color: Color
                                                                            .fromARGB(
                                                                                255,
                                                                                121,
                                                                                121,
                                                                                121),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Container(
                                    //   alignment: Alignment.bottomCenter,
                                    //   child: GetBuilder<FavoriteController>(
                                    //       builder: (controller) => IconButton(
                                    //           onPressed: () {
                                    //             if (controller.isFavorite[
                                    //                         itemsModel.itemsId]
                                    //                     .toString() ==
                                    //                 "1") {
                                    //               controller.setFavorite(
                                    //                   itemsModel.itemsId, "0");
                                    //               controller.removeFavorite(
                                    //                   itemsModel.itemsId
                                    //                       .toString());
                                    //             } else {
                                    //               controller.setFavorite(
                                    //                   itemsModel.itemsId, "1");
                                    //               controller.addFavorite(itemsModel
                                    //                   .itemsId
                                    //                   .toString());
                                    //             }
                                    //           },
                                    //           icon: Icon(
                                    //             controller.isFavorite[
                                    //                             itemsModel.itemsId]
                                    //                         .toString() ==
                                    //                     "1"
                                    //                 ? Icons.favorite
                                    //                 : Icons
                                    //                     .favorite_border_outlined,
                                    //             color: AppColor.primaryColor,
                                    //             size: 20,
                                    //           ))),
                                    // )
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    if (itemsModel.itemsDiscount != 0)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 20,
                            width: 30,
                            decoration: BoxDecoration(
                                color: AppColor.primaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text("-\ ${itemsModel.itemsDiscount}\%",
                                  style: TextStyle(
                                      color: AppColor.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "sans")),
                            ),
                          ),
                        ],
                      )
                  ],
                ),
              )),
        ),
      ],
    );
  }
}













class ListItemsHomepub4 extends GetView<HomeControllerImp> {
  const ListItemsHomepub4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    FavoriteController controllerFav = Get.put(FavoriteController());
    return Container(
      child: SizedBox(
      height: 170,

        width: MediaQuery.of(context).size.width / 1,

        child: ListView.builder(
            itemCount: controller.items.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              return ItemsHomepub4(
                  itemsModel: ItemsModel.fromJson(controller.items[i]));
            }),
        // GridView.builder(
        //     shrinkWrap: true,
        //     physics: const NeverScrollableScrollPhysics(),
        //     itemCount: controller.items.length,
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 2, childAspectRatio: 0.88),
        //     itemBuilder: (BuildContext context, index) {
        //       return Container(
        //         child:       );
        //     }),
        // ]),
      ),
    );
  }
}

class ItemsHomepub4 extends GetView<HomeControllerImp> {
  final ItemsModel itemsModel;
  const ItemsHomepub4({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    // ProductDetailsControllerImp controlleradd =
    //  Get.put(ProductDetailsControllerImp());
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return Column(
      children: [
              if (itemsModel.itemsCat == 18)
        Container(
           width: MediaQuery.of(context).size.width /3,
          margin: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          )),
          child: InkWell(
              onTap: () {
                controller.goToPageProductDetails(itemsModel);
              },
              child: Card(
                child: Stack(
                  children: [
                    if (itemsModel.itemsCat == 18)
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )), // padding: const EdgeInsets.all(10),
                        child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(height: 10,),
                              Hero(
                                tag: "${itemsModel.itemsId}",
                                child: Container(
                                  height: 100,
                                  width: MediaQuery.of(context).size.width /3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                      image: DecorationImage(
                                          image: CachedNetworkImageProvider(
                                            AppLink.imagestItems +
                                                "/" +
                                                itemsModel.itemsImage!,
                                          ),
                                          filterQuality: FilterQuality.high,
                                          fit: BoxFit.fill)),
                                ),
                              ),

                              Container(
                                margin: EdgeInsetsDirectional.symmetric(
                                  horizontal: 5,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${translateDatabase(itemsModel.itemsNameAr, itemsModel.itemsNamefr)}',
                                          style: GoogleFonts.notoSans(
                                            color: Color(0xFF333333),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 1),
                                          child: Row(
                                            children: [
                                              Text(
                                                'In stock',
                                                style: GoogleFonts.karla(
                                                  color: Color(0xFF525252),
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.normal,
                                                  height: 0.33,
                                                ),
                                              ),
                                              Text(
                                                " (\ ${itemsModel.itemsCount} \)",
                                                style: GoogleFonts.karla(
                                                  color: Color(0xFF525252),
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.normal,
                                                  height: 0.33,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Text(
                                                "${itemsModel.itemsPriceDiscount}",
                                                style: GoogleFonts.notoSans(
                                                  color: Color(0xFF333333),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                "127".tr,
                                                style: GoogleFonts.notoSans(
                                                  color: Color(0xFF333333),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 7),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 3,
                                                            // top: -8,
                                                            child: Container(
                                                              child: Row(
                                                                children: [
                                                                  if (itemsModel
                                                                          .itemsDiscount !=
                                                                      0)
                                                                    Text(
                                                                      "${itemsModel.itemsPrice}",
                                                                      style: GoogleFonts
                                                                          .notoSans(
                                                                        color: Color
                                                                            .fromARGB(
                                                                                255,
                                                                                121,
                                                                                121,
                                                                                121),
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .normal,
                                                                        height:
                                                                            0.91,
                                                                      ),
                                                                    ),
                                                                  if (itemsModel
                                                                          .itemsDiscount !=
                                                                      0)
                                                                    Text(
                                                                      "127".tr,
                                                                      style: GoogleFonts
                                                                          .josefinSans(
                                                                        color: Color
                                                                            .fromARGB(
                                                                                255,
                                                                                117,
                                                                                117,
                                                                                117),
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .normal,
                                                                        height:
                                                                            0.91,
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          if (itemsModel
                                                                  .itemsDiscount !=
                                                              0)
                                                            Positioned(
                                                              left: 9,
                                                              top: 3,
                                                              child: Transform(
                                                                transform: Matrix4
                                                                    .identity()
                                                                  ..translate(
                                                                      0.0, 0.0)
                                                                  ..rotateZ(0.00),
                                                                child: Container(
                                                                  width: 25.94,
                                                                  decoration:
                                                                      ShapeDecoration(
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      side:
                                                                          BorderSide(
                                                                        width: 0.5,
                                                                        strokeAlign:
                                                                            BorderSide
                                                                                .strokeAlignCenter,
                                                                        color: Color
                                                                            .fromARGB(
                                                                                255,
                                                                                121,
                                                                                121,
                                                                                121),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Container(
                                    //   alignment: Alignment.bottomCenter,
                                    //   child: GetBuilder<FavoriteController>(
                                    //       builder: (controller) => IconButton(
                                    //           onPressed: () {
                                    //             if (controller.isFavorite[
                                    //                         itemsModel.itemsId]
                                    //                     .toString() ==
                                    //                 "1") {
                                    //               controller.setFavorite(
                                    //                   itemsModel.itemsId, "0");
                                    //               controller.removeFavorite(
                                    //                   itemsModel.itemsId
                                    //                       .toString());
                                    //             } else {
                                    //               controller.setFavorite(
                                    //                   itemsModel.itemsId, "1");
                                    //               controller.addFavorite(itemsModel
                                    //                   .itemsId
                                    //                   .toString());
                                    //             }
                                    //           },
                                    //           icon: Icon(
                                    //             controller.isFavorite[
                                    //                             itemsModel.itemsId]
                                    //                         .toString() ==
                                    //                     "1"
                                    //                 ? Icons.favorite
                                    //                 : Icons
                                    //                     .favorite_border_outlined,
                                    //             color: AppColor.primaryColor,
                                    //             size: 20,
                                    //           ))),
                                    // )
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    if (itemsModel.itemsDiscount != 0)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 20,
                            width: 30,
                            decoration: BoxDecoration(
                                color: AppColor.primaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text("-\ ${itemsModel.itemsDiscount}\%",
                                  style: TextStyle(
                                      color: AppColor.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "sans")),
                            ),
                          ),
                        ],
                      )
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
