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
        bottomNavigationBar: Container(
            margin:    EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 40,
            child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: AppColor.secondColor,
                onPressed: () {
                  controller.cartController.refreshPage();
                  Get.toNamed(AppRoute.cart);
                },
                child:  Text(
                  "153".tr,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ))),
        body: GetBuilder<ProductDetailsControllerImp>(
            builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: ListView(children: [
                   TopProductPageDetailsCat(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${translateDatabase(controller.itemsModel.itemsNameAr , controller.itemsModel.itemsNameen , controller.itemsModel.itemsNamefr)}",
                                style: GoogleFonts.hanuman(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Column(
                                crossAxisAlignment:  CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "${controller.itemsModel.itemsPriceDiscount}",
                                        style: GoogleFonts.josefinSans(
                                          color:Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ), 
                                     Text("127".tr,  style: GoogleFonts.josefinSans(
                                          color:Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                        ),),
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 20,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              right:0 ,
                                              top: -8,
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "${controller.itemsModel.itemsPrice}",
                                                      style: GoogleFonts.josefinSans(
                                                        color: Color(0xFF787878),
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),
                                                      Text("127".tr),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              right: 10,
                                              top: 5,
                                              child: Transform(
                                                transform: Matrix4.identity()
                                                  ..translate(0.0, 0.0)
                                                  ..rotateZ(0.35),
                                                child: Container(
                                                  width: 30.94,
                                                  decoration: ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        width: 1,
                                                        strokeAlign: BorderSide
                                                            .strokeAlignCenter,
                                                        color:
                                                            Color(0xFFD86868),
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
                                ],
                              )
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '128'.tr,
                                      style: GoogleFonts.josefinSans(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.delivery_dining_sharp)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '129'.tr,
                                      style: GoogleFonts.josefinSans(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.restore_sharp)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '130'.tr,
                                      style: GoogleFonts.josefinSans(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.title_rounded)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          PriceAndCountItems(
                              onAdd: () {
                                controller.add();
                              },
                              onRemove: () {
                                controller.remove();
                              },
                              count: "${controller.countitems}"),

                          const SizedBox(height: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '131'.tr,
                                style: GoogleFonts.karla(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  height: 0.07,
                                ),
                              ),
                              Text("\n${translateDatabase(controller.itemsModel.itemsDescAr , controller.itemsModel.itemsDescen ,controller.itemsModel.itemsDescfr)}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: AppColor.grey2)),
                            ],
                          ),
                          const SizedBox(height: 10),
                          // Text("Color",
                          //     style: Theme.of(context).textTheme.headline1!.copyWith(
                          //           color: AppColor.fourthColor,
                          //         )),
                          // const SizedBox(height: 10),
                          // const SubitemsList()
                        ]),
                  )
                ]))));
  }
}
