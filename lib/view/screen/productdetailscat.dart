// ignore_for_file: unused_local_variable

import 'package:EMOOL/controller/productdetails_controller.dart';
import 'package:EMOOL/core/class/handlingdataview.dart';
import 'package:EMOOL/core/constant/color.dart';
import 'package:EMOOL/core/constant/routes.dart';
import 'package:EMOOL/view/widget/productdetails/priceandcount.dart';
import 'package:EMOOL/view/widget/productdetails/toppageproductdetailscat.dart';
import 'package:EMOOL/core/functions/translatefatabase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsCat extends StatelessWidget {
  const ProductDetailsCat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controller =
        Get.put(ProductDetailsControllerImp());
    return Scaffold(
        bottomNavigationBar: GetBuilder<ProductDetailsControllerImp>(
          builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        controller.add();
                      },
                      child: Container(
                        height: 39,
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                            color: AppColor.secondColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          children: [
                            if (controller.countitems != 1)
                              Positioned(
                                top: -5,
                                left: 0,
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      MaterialButton(
                                          onPressed: () {
                                            controller.add();
                                          },
                                          child: Text(
                                            "152".tr,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          )),
                                      MaterialButton(
                                        onPressed: () {
                                          controller.add();
                                        },
                                        child: Icon(
                                          Icons.add_shopping_cart_outlined,
                                          color: AppColor.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            if (controller.countitems != 0)
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  color: AppColor.white,
                                  child: FoodCounter(
                                      onAdd: () {
                                        controller.add();
                                      },
                                      onRemove: () {
                                        controller.remove();
                                      },
                                      count: "${controller.countitems}"),
                                ),
                              )
                          ],
                        ),
                      ),
                    ),
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: AppColor.secondColor,
                        onPressed: () {
                          controller.cartController.refreshPage();
                          Get.toNamed(AppRoute.cart);
                        },
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          color: AppColor.white,
                        )),
                  ],
                )),
          ),
        ),
        body: Container(
            child: GetBuilder<ProductDetailsControllerImp>(
          builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: ListView(
              children: [
                Stack(children: [
                  TopProductPageDetailsCat(),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    margin: EdgeInsets.only(top: 430),
                    height: 400,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${translateDatabase(controller.itemsModel.itemsNameAr,  controller.itemsModel.itemsNamefr)}",
                                style: GoogleFonts.notoSans(
                                  // letterSpacing: 1.1,
                                  color: Color(0xFF333333),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "${controller.itemsModel.itemsPriceDiscount}",
                                        style: GoogleFonts.josefinSans(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        "127".tr,
                                        style: GoogleFonts.josefinSans(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              width: 60,
                                              height: 20,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    right: 0,
                                                    top: -8,
                                                    child: Container(
                                                      child: Row(
                                                        children: [
                                                          if (controller
                                                                  .itemsModel
                                                                  .itemsDiscount !=
                                                              0)
                                                            Text(
                                                              "${controller.itemsModel.itemsPrice}",
                                                              style: GoogleFonts
                                                                  .josefinSans(
                                                                color: Color(
                                                                    0xFF787878),
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          if (controller
                                                                  .itemsModel
                                                                  .itemsDiscount !=
                                                              0)
                                                            Text("127".tr),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  if (controller.itemsModel
                                                          .itemsDiscount !=
                                                      0)
                                                    Positioned(
                                                      right: 10,
                                                      top: 5,
                                                      child: Transform(
                                                        transform:
                                                            Matrix4.identity()
                                                              ..translate(
                                                                  0.0, 0.0)
                                                              ..rotateZ(0.35),
                                                        child: Container(
                                                          width: 30.94,
                                                          decoration:
                                                              ShapeDecoration(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              side: BorderSide(
                                                                width: 1,
                                                                strokeAlign:
                                                                    BorderSide
                                                                        .strokeAlignCenter,
                                                                color: Color(
                                                                    0xFFD86868),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        if (controller
                                                .itemsModel.itemsDiscount !=
                                            0)
                                          Container(
                                            width: 20,
                                            height: 20.66,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 10,
                                                  child: Container(
                                                      width: 20,
                                                      height: 10.66,
                                                      child: Text("-",
                                                          style: TextStyle(
                                                            color: AppColor
                                                                .primaryColor,
                                                            fontSize: 10,
                                                            fontFamily:
                                                                'ABeeZee',
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 0.11,
                                                          ))),
                                                ),
                                                Positioned(
                                                  left: 0,
                                                  top: 10.19,
                                                  child: SizedBox(
                                                    width: 25.16,
                                                    height: 1.52,
                                                    child: Center(
                                                      child: Text(
                                                        "${controller.itemsModel.itemsDiscount}\%",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: AppColor
                                                              .primaryColor,
                                                          fontSize: 10,
                                                          fontFamily: 'ABeeZee',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          height: 0.11,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  child: Row(
                                    children: [
                                      Text(
                                        '   In stock',
                                        style: GoogleFonts.karla(
                                          color: Color(0xFF525252),
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          height: 0.33,
                                        ),
                                      ),
                                      Text(
                                        " (\ ${controller.itemsModel.itemsCount} \)",
                                        style: GoogleFonts.karla(
                                          color: Color(0xFF525252),
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          height: 0.33,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            child: Text(
                                              'Livraison : ',
                                              style: GoogleFonts.karla(
                                                color: Color(0xFF000000),
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 19),
                                            child: Column(
                                              children: [
                                                Text(
                                                  'Gratuit A Casablanca',
                                                  style: GoogleFonts.karla(
                                                      color: Color(0xFF000000),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1.1),
                                                ),
                                                Text(
                                                  '( Hors Casablanca 10Dhs )',
                                                  style: GoogleFonts.karla(
                                                      color: Color(0xFF000000),
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1.1),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Row(
                          //   children: [
                          //     Text(
                          //       '132'.tr,
                          //       style: TextStyle(
                          //           fontSize: 20,
                          //           fontWeight: FontWeight.bold,
                          //           color: AppColor.black),
                          //     ),
                          //     const Spacer(),
                          //   ],
                          // ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '130'.tr,
                                    style: GoogleFonts.karla(
                                      color: Color(0xFF000000),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  if (controller.itemsModel.itemsDescen != null)
                                    Container(
                                      width: 40,
                                      height: 30.66,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 5,
                                            child: Container(
                                              width: 40,
                                              height: 25.66,
                                              decoration: BoxDecoration(
                                                  color: AppColor.white,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: AppColor
                                                          .primaryColor)),
                                            ),
                                          ),
                                          if (controller
                                                  .itemsModel.itemsDescen !=
                                              0)
                                            Positioned(
                                              left: 3.42,
                                              top: 20.19,
                                              child: SizedBox(
                                                width: 25.16,
                                                height: 7.52,
                                                child: Center(
                                                  child: Text(
                                                    "${controller.itemsModel.itemsDescen}",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color:
                                                          AppColor.primaryColor,
                                                      fontSize: 16,
                                                      fontFamily: 'ABeeZee',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      height: 0.11,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    )
                                ],
                              ),
                              Text(
                                '131'.tr,
                                style: GoogleFonts.karla(
                                  color: Color(0xFF000000),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                  "${translateDatabase(controller.itemsModel.itemsDescAr, controller.itemsModel.itemsDescfr)}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: AppColor.grey2)),
                            ],
                          ),
                          // const SizedBox(height: 10),
                          // Text("Color",
                          //     style: Theme.of(context).textTheme.headline1!.copyWith(
                          //           color: AppColor.fourthColor,
                          //         )),
                          // const SizedBox(height: 10),
                          // const SubitemsList()
                        ]),
                  )
                ])
              ],
            ),
          ),
        )));
  }
}
