import 'package:EMOOL/controller/cart_controller.dart';
import 'package:EMOOL/core/class/handlingdataview.dart';
import 'package:EMOOL/core/functions/translatefatabase.dart';
import 'package:EMOOL/view/widget/cart/custom_bottom_navgationbar_cart.dart';
import 'package:EMOOL/view/widget/cart/customitemscartlist.dart';
import 'package:EMOOL/view/widget/cart/topcardCart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.put(CartController());
    return Scaffold(
        appBar: AppBar(
          title: Text("124".tr),
        ),
        bottomNavigationBar: GetBuilder<CartController>(
            builder: (controller) => BottomNavgationBarCart(
                controllercoupon: controller.controllercoupon!,
                onApplyCoupon: () {
                  controller.checkcoupon();
                },
                price: "${cartController.priceorders}",
                discount: "${controller.discountcoupon}%",
                totalprice: "${controller.getTotalPrice()}")),
        body: GetBuilder<CartController>(
            builder: ((controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: ListView(
                  children: [
                  
                    SizedBox(height: 10),
                    TopCardCart(
                        message: "118".tr,
                        message1: "  ${cartController.totalcountitems}  ",
                        message2: "119".tr),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          ...List.generate(
                            cartController.data.length,
                            (index) => CustomItemsCartList(
                                onAdd: () async {
                                  await cartController.add(cartController
                                      .data[index].itemsId!
                                      .toString());
                                  cartController.refreshPage();
                                },
                                onRemove: () async {
                                  await cartController.delete(cartController
                                      .data[index].itemsId!
                                      .toString());
                                  cartController.refreshPage();
                                },
                                imagename:
                                    "${cartController.data[index].itemsImage}",
                                name: "${translateDatabase( cartController.data[index].itemsNameAr ,cartController.data[index].itemsNamefr )}",
                                price:
                                    "${cartController.data[index].itemsprice} ",
                                // pricedcnt:
                                //     "${cartController.data[index].itemsPriceDiscount} \$",
                                count:
                                    "${cartController.data[index].countitems}"),
                          )
                        ],
                      ),
                    )
                  ],
                )))));
  }
}
