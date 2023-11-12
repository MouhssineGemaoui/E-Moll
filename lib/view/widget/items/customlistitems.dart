import 'package:EMOOL/controller/favorite_controller.dart';
import 'package:EMOOL/core/constant/imgaeasset.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:EMOOL/controller/items_controller.dart';
import 'package:EMOOL/core/constant/color.dart';
import 'package:EMOOL/core/functions/translatefatabase.dart';
import 'package:EMOOL/data/model/itemsmodel.dart';
import 'package:EMOOL/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  final ItemsModel itemsModel;
  // final bool active;
  const CustomListItems({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
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
                            height: 130,
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
                        Text(
                          '${translateDatabase(itemsModel.itemsNameAr, itemsModel.itemsNameen, itemsModel.itemsNamefr)}',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Karla',
                            fontWeight: FontWeight.w500,
                            height: 0.91,
                          ),
                        ),
                        Row(
                          children: [
                            const Text("in stack", textAlign: TextAlign.center),
                             Text(
                              " (\ ${itemsModel.itemsCount} \) ",
                              style: TextStyle(
                                fontFamily: 'Karla',
                                fontSize: 10,
                                height: 1,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            ),
                            Text(
                              "127".tr,
                              style: GoogleFonts.josefinSans(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 0.91,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
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
                                                              if (itemsModel.itemsDiscount != 0)

                                              Text(
                                                "${itemsModel.itemsPrice}",
                                                style: GoogleFonts.josefinSans(
                                                  color: Color.fromARGB(
                                                      255, 117, 117, 117),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  height: 0.91,
                                                ),
                                              ),                if (itemsModel.itemsDiscount != 0)

                                              Text(
                                                "127".tr,
                                                style: GoogleFonts.josefinSans(
                                                  color: Color.fromARGB(
                                                      255, 117, 117, 117),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  height: 0.91,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                        if (itemsModel.itemsDiscount != 0)
                                      Positioned(
                                        left: 9,
                                        top: 3,
                                        child: Transform(
                                          transform: Matrix4.identity()
                                            ..translate(0.0, 0.0)
                                            ..rotateZ(0.00),
                                          child: Container(
                                            width: 25.94,
                                            decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  width: 1,
                                                  strokeAlign: BorderSide
                                                      .strokeAlignCenter,
                                                  color: Color.fromARGB(
                                                      255, 117, 117, 117),
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
                            Container(
                              child: GetBuilder<FavoriteController>(
                                  builder: (controller) => IconButton(
                                      onPressed: () {
                                        if (controller
                                                .isFavorite[itemsModel.itemsId]
                                                .toString() ==
                                            "1") {
                                          controller.setFavorite(
                                              itemsModel.itemsId, "0");
                                          controller.removeFavorite(
                                              itemsModel.itemsId.toString());
                                        } else {
                                          controller.setFavorite(
                                              itemsModel.itemsId, "1");
                                          controller.addFavorite(
                                              itemsModel.itemsId.toString());
                                        }
                                      },
                                      icon: Icon(
                                        controller.isFavorite[
                                                        itemsModel.itemsId]
                                                    .toString() ==
                                                "1"
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color: AppColor.primaryColor,
                                      ))),
                            )
                          ],
                        )
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
    );
  }
}
// Container(
//           margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
//           width: MediaQuery.of(context).size.width / 3.5,
//           decoration: ShapeDecoration(
//             color: Color(0xFFE8E8E8),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(80),
//                 topRight: Radius.circular(80),
//               ),
//             ),
//             shadows: [
//               BoxShadow(
//                 color: Color(0x26000000),
//                 blurRadius: 5,
//                 offset: Offset(1, 1),
//                 spreadRadius: 3,
//               )
//             ],
//           ),
//           child: Stack(
//             children: [
//               Positioned(
//                 left: 3,
//                 top: 8,
//                 right: 3,
//                 child: Container(
//                   width: 90,
//                   height: 90,
//                   child: CircleAvatar(
//                     backgroundColor: AppColor.white,
//                     backgroundImage: CachedNetworkImageProvider(
//                       AppLink.imagestItems + "/" + itemsModel.itemsImage!,
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 5,
//                 top: 112,
//                 child: Text(
//                   '${translateDatabase( itemsModel.itemsNameAr ,itemsModel.itemsNameen ,itemsModel.itemsNamefr)}',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 13,
//                     fontFamily: 'Karla',
//                     fontWeight: FontWeight.w500,
//                     height: 0.91,
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 3,
//                 top: 130,
//                 child: Row(
//                   children: [
//                     Text(
//                       "${itemsModel.itemsPriceDiscount}",
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 13,
//                         fontFamily: 'Karla',
//                         fontWeight: FontWeight.w500,
//                         height: 0.91,
//                       ),
//                     ),Text("127".tr,
//                                 style: GoogleFonts.josefinSans(
//                                   color: Color.fromARGB(255, 0, 0, 0),
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w400,
//                                                           height: 0.91,

//                           ),
//                       )
//                   ],
//                 ),
//               ),
//               Positioned(
//                 top: 145,
//                 child: Container(
//                   width: 50,
//                   height: 10,
//                   child: Stack(
//                     children: [
//                       Positioned(
//                           left: 6,
//                         // top: -8,
//                         child: Container(
//                           child: Row(
//                             children: [
//                               Text(
//                                 "${itemsModel.itemsPrice}",
//                                 style: GoogleFonts.josefinSans(
//                                   color: Color.fromARGB(255, 0, 0, 0),
//                                   fontSize: 11,
//                                   fontWeight: FontWeight.w400,
//                                                           height: 0.91,

//                                 ),
//                               ),Text(
//                                 "127".tr,
//                                 style: GoogleFonts.josefinSans(
//                                   color: Color.fromARGB(255, 0, 0, 0),
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w400,
//                                                           height: 0.91,

//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         left: 9,
//                         top: 1,
//                         child: Transform(
//                           transform: Matrix4.identity()
//                             ..translate(0.0, 0.0)
//                             ..rotateZ(0.35),
//                           child: Container(
//                             width: 25.94,
//                             decoration: ShapeDecoration(
//                               shape: RoundedRectangleBorder(
//                                 side: BorderSide(
//                                   width: 1,
//                                   strokeAlign: BorderSide.strokeAlignCenter,
//                                   color: Color(0xFFD86868),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

//               // Positioned(
//               //   left: 85,
//               //   top: 8,
//               //   child: Container(
//               //     width: 14,
//               //     height: 14,
//               //     decoration: ShapeDecoration(
//               //       color: Color(0xFF279797),
//               //       shape: OvalBorder(),
//               //     ),
//               //   ),
//               // ),
//               // Positioned(
//               //   left: 88,
//               //   top: 9,
//               //   child: Text(
//               //     '+',
//               //     style: TextStyle(
//               //       color: Colors.white,
//               //       fontSize: 14,
//               //       fontFamily: 'Karla',
//               //       fontWeight: FontWeight.w500,
//               //       height: 0.85,
//               //     ),
//               //   ),
//               // ),
//               // Positioned(
//               //   right: 7,
//               //   bottom: 7,
//               //   child: InkWell(onTap: () {
//               //       // controlleradd.addItems(itemsModel.itemsId.toString());
//               //   },
//               //     child: Container(
//               //         width: 30,
//               //         height: 30,
//               //         child: Icon(   Icons.add_shopping_cart_rounded,
//               //                   size: 24,
//               //                   color: Colors.red,) ),
//               //   ),
//               // ),
//             ],
//           ),
//         ));
//   }
// }
