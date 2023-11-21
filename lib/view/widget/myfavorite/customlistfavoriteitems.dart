import 'package:cached_network_image/cached_network_image.dart';
import 'package:EMOOL/controller/myfavoritecontroller.dart';
import 'package:EMOOL/controller/productdetails_controller.dart';
import 'package:EMOOL/core/functions/translatefatabase.dart';
import 'package:EMOOL/data/model/myfavorite.dart';
import 'package:EMOOL/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListFavoriteItems extends GetView<MyFavoriteController> {
  final MyFavoriteModel itemsModel;
  // final ItemsModel itemsmodel;
  // final bool active;
  const CustomListFavoriteItems({
    Key? key,
    required this.itemsModel,
    // required this.itemsmodel,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    MyFavoriteController controller = Get.put(MyFavoriteController());
    ProductDetailsControllerImp controlleradd =
        Get.put(ProductDetailsControllerImp());

    return InkWell(
        onTap: () {
          // controller.goToPageProductDetails(itemsModel);
        },
        child: Card(
            child: Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 0.80, color: Color(0xFF279797)),
              borderRadius: BorderRadius.circular(9),
            ),
          ),
          width: 365,
          height: 115,
          child: Stack(
            children: [
              Positioned(
                left: 111,
                top: 39,
                child: Row(
                  children: [
                    Text(
                      "${itemsModel.itemsPrice} ",
                      style: GoogleFonts.karla(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "127".tr,
                      style: GoogleFonts.karla(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 112,
                top: 22,
                child: Text(
                  translateDatabase(
                      itemsModel.itemsNameAr,  itemsModel.itemsNamefr),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Karla',
                    fontWeight: FontWeight.w500,
                    height: 0.05,
                  ),
                ),
              ),
              //  Positioned(
              //   left: 122,
              //   top: 30,
              //   child: Container(
              //     child: Text("${itemsModel.itemsDesc}",
              //                       style: Theme.of(context)
              //                           .textTheme
              //                           .bodyText1!
              //                           .copyWith(
              //                               fontSize: 16,
              //                               fontWeight: FontWeight.w300,
              //                               color: AppColor.grey2
              //          )),
              //   ),
              // ),
              Positioned(
                left: 3,
                top: 4,
                child: Hero(
                  tag: "${itemsModel.itemsId}",
                  child: Container(
                    width: 102,
                    height: 107,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(
                          AppLink.imagestItems + "/" + itemsModel.itemsImage!,
                        ),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    //                      child: CachedNetworkImage(
                    // imageUrl:
                    //                         AppLink.imagestItems + "/" + itemsModel.itemsImage!,
                    //                          height: 107,
                    //                      fit: BoxFit.fill,
                    //                   ),
                  ),
                ),
              ),

              Positioned(
                left: 190,
                top: 82,
                child: InkWell(
                  onTap: () {
                    controlleradd.addItems(itemsModel.itemsId.toString());
                  },
                  child: Container(
                    height: 20,
                    width: 110,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 110,
                            height: 20,
                            decoration: ShapeDecoration(
                              color: Color(0xFF0EA01D),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ),
                        Positioned(
                          // left: 16,
                          right: 15,
                          top: 12,
                          child: SizedBox(
                            width: 93,
                            height: 11,
                            child: Text(
                              '152'.tr,
                              style: GoogleFonts.karla(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                height: 0.12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 9,
                top: 5,
                child: InkWell(
                  onTap: () {
                    controller.deleteFromFavorite(itemsModel.favoriteId);
                  },
                  child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Icon(
                        Icons.delete,
                        color: Colors.red,
                      )),
                ),
              ),
            ],
          ),
        )
            //       ]),
            // ),
            ));
  }
}

// logical thinking

// GetBuilder<FavoriteController>(
//                         builder: (controller) => IconButton(
//                             onPressed: () {
//                                 if (controller.isFavorite[itemsModel.itemsId] == "1" ) {
//                                   controller.setFavorite(
//                                       itemsModel.itemsId, "0");
//                                 } else {
//                                   controller.setFavorite(
//                                       itemsModel.itemsId, "1");
//                                 }
//                             },
//                             icon: Icon(
//                               controller.isFavorite[itemsModel.itemsId] == "1"
//                                   ? Icons.favorite
//                                   : Icons.favorite_border_outlined,
//                               color: AppColor.primaryColor,
//                             )))
