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

class ListItemsHome extends GetView<HomeControllerImp> {
  const ListItemsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    FavoriteController controllerFav = Get.put(FavoriteController());
    return Container(
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 1.3,
        child: ListView(children: [
          GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 0.7),
              itemBuilder: (BuildContext context, index) {
                return Container(
                  child: ItemsHome(
                      itemsModel: ItemsModel.fromJson(controller.items[index])),
                );
              }),
        ]),
      ),
    );
  }
}

class ItemsHome extends GetView<HomeControllerImp> {
  final ItemsModel itemsModel;
  const ItemsHome({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
        // ProductDetailsControllerImp controlleradd =
        //  Get.put(ProductDetailsControllerImp());
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return InkWell(
        onTap: () {
          controller.goToPageProductDetails(itemsModel);
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
          width: MediaQuery.of(context).size.width / 3.5,
          decoration: ShapeDecoration(
            color: Color(0xFFE8E8E8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(80),
                topRight: Radius.circular(80),
              ),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 5,
                offset: Offset(1, 1),
                spreadRadius: 3,
              )
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                left: 3,
                top: 8,
                right: 3,
                child: Container(
                  width: 90,
                  height: 90,
                  child: CircleAvatar(
                    backgroundColor: AppColor.white,
                    backgroundImage: CachedNetworkImageProvider(
                      AppLink.imagestItems + "/" + itemsModel.itemsImage!,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 5,
                top: 112,
                child: Text(
                  '${translateDatabase( itemsModel.itemsNameAr ,itemsModel.itemsNameen ,itemsModel.itemsNamefr)}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.w500,
                    height: 0.91,
                  ),
                ),
              ),
              Positioned(
                left: 3,
                top: 130,
                child: Row(
                  children: [
                    Text(
                      "${itemsModel.itemsPriceDiscount}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Karla',
                        fontWeight: FontWeight.w500,
                        height: 0.91,
                      ),
                    ),Text("127".tr,
                                style: GoogleFonts.josefinSans(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                                          height: 0.91,

                          ),
                      )
                  ],
                ),
              ),
              Positioned(
                top: 145,
                child: Container(
                  width: 50,
                  height: 10,
                  child: Stack(
                    children: [
                      Positioned(
                          left: 6,
                        // top: -8,
                        child: Container(
                          child: Row(
                            children: [
                              Text(
                                "${itemsModel.itemsPrice}",
                                style: GoogleFonts.josefinSans(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                                          height: 0.91,

                                ),
                              ),Text(
                                "127".tr,
                                style: GoogleFonts.josefinSans(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                                          height: 0.91,

                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 9,
                        top: 1,
                        child: Transform(
                          transform: Matrix4.identity()
                            ..translate(0.0, 0.0)
                            ..rotateZ(0.35),
                          child: Container(
                            width: 25.94,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFFD86868),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Positioned(
              //   left: 85,
              //   top: 8,
              //   child: Container(
              //     width: 14,
              //     height: 14,
              //     decoration: ShapeDecoration(
              //       color: Color(0xFF279797),
              //       shape: OvalBorder(),
              //     ),
              //   ),
              // ),
          
              // Positioned(
              //   right: 7,
              //   bottom: 7,
              //   child: InkWell(onTap: () {
              //       // controlleradd.addItems(itemsModel.itemsId.toString());
              //   },
              //     child: Container(
              //         width: 30,
              //         height: 30,
              //         child: Icon(   Icons.add_shopping_cart_rounded,
              //                   size: 24,
              //                   color: Colors.red,) ),
              //   ),
              // ),
            ],
          ),
        ));
  }
}
