// ignore_for_file: prefer_const_constructors

import 'package:EMOOL/controller/cart_controller.dart';
import 'package:EMOOL/core/constant/color.dart';
import 'package:EMOOL/view/widget/cart/buttoncart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavgationBarCart extends GetView<CartController> {
  final String price;
  final String discount;
  final String totalprice;
  final TextEditingController controllercoupon;
  final void Function()? onApplyCoupon;
  const BottomNavgationBarCart(
      {Key? key,
      required this.price,
      required this.discount,
      required this.totalprice,
      required this.controllercoupon,
      this.onApplyCoupon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GetBuilder<CartController>(
            builder: (controller) => controller.couponname == null
                ?  TextField(
            controller: controllercoupon,
            decoration: InputDecoration(
              
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
              ),
              filled: true,
              // fillColor: "kcontentColor",
              hintText: "Enter Discount Code",
              hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
              suffixIcon: TextButton(
                onPressed: onApplyCoupon,
                child:  Text(
                 "120".tr,
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
                : Container(
                    child: Text(
                    "Coupon Code ${controller.couponname!}",
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold),
                  ))),
                  SizedBox(height: 10,),
                     Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
                "115".tr,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Row(
                children: [
                  Text(
                   "$price ",  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("127".tr, style: TextStyle(fontSize: 16)),
                ],
              ),

            ],
          ),
                Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
               "121".tr,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Text(
              "$discount ",  style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          const Divider(height: 2,color: AppColor.primaryColor),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
               "116".tr,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColor.primaryColor
                ),
              ),
              Row(
                children: [
                  Text( "$totalprice",
                    style:  TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColor.primaryColor
                    ),
                  ),
                   Text("127".tr,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColor.primaryColor)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
           CustomButtonCart(
          textbutton: "123".tr,
          onPressed: () {
            controller.goToPageCheckout();
          },
        )
        ],
      ),
    );
  }
}

        // Container(
        //   margin: EdgeInsets.all(10),
        //   padding: EdgeInsets.all(10),
        //   decoration: BoxDecoration(
        //       border: Border.all(color: AppColor.primaryColor, width: 1),
        //       borderRadius: BorderRadius.circular(10)),
        //   child: Column(children: [
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Container(
        //             padding: EdgeInsets.symmetric(horizontal: 20),
        //             child: Text("115".tr, style: TextStyle(fontSize: 16))),
        //         Container(
        //             padding: EdgeInsets.symmetric(horizontal: 20),
        //             child: Row(
        //               children: [
        //                 Text("$price ", style: TextStyle(fontSize: 16)),
        //                 Text("127".tr, style: TextStyle(fontSize: 16)),
        //               ],
        //             ))
        //       ],
        //     ),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Container(
        //             padding: EdgeInsets.symmetric(horizontal: 20),
        //             child: Text("121".tr, style: TextStyle(fontSize: 16))),
        //         Container(
        //             padding: EdgeInsets.symmetric(horizontal: 20),
        //             child: Text("$discount ", style: TextStyle(fontSize: 16)))
        //       ],
        //     ),
        //     Divider(),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     // Container(
            //     //     padding: EdgeInsets.symmetric(horizontal: 20),
            //     //     child: Text("116".tr,
            //     //         style: TextStyle(
            //     //             fontSize: 16,
            //     //             fontWeight: FontWeight.bold,
            //     //             color: AppColor.primaryColor))),
            //     // Container(
            //     //     padding: EdgeInsets.symmetric(horizontal: 20),
            //     //     child: Row(
            //     //       children: [
            //     //         Text("$totalprice ",
            //     //             style: TextStyle(
            //     //                 fontSize: 16,
            //     //                 fontWeight: FontWeight.bold,
            //     //                 color: AppColor.primaryColor)),
            //     //         Text("127".tr,
            //     //             style: TextStyle(
            //     //                 fontSize: 16,
            //     //                 fontWeight: FontWeight.bold,
            //     //                 color: AppColor.primaryColor)),
            //     //       ],
            //     //     ))
            //   ],
            // ),
        //   ]),
        // ),
//         SizedBox(height: 10),
//         CustomButtonCart(
//           textbutton: "123".tr,
//           onPressed: () {
//             controller.goToPageCheckout();
//           },
//         )
//       ],
//     ));
//   }
// }




class CheckOutBox extends StatelessWidget {
    final String price;
  final String discount;
  final String totalprice;
  // final TextEditingController controllercoupon;
    final void Function()? onApplyCoupon;

  const CheckOutBox({
          required this.price,
      required this.discount,
      required this.totalprice,
      // required this.controllercoupon,
      this.onApplyCoupon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      padding:  EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            
            decoration: InputDecoration(
              
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
              ),
              filled: true,
              // fillColor: "kcontentColor",
              hintText: "Enter Discount Code",
              hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
              suffixIcon: TextButton(
                onPressed: onApplyCoupon,
                child:  Text(
                 "120".tr,
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
                "115".tr,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Row(
                children: [
                  Text(
                   "$price ",  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("127".tr, style: TextStyle(fontSize: 16)),
                ],
              ),

            ],
          ),
                Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
               "121".tr,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Text(
              "$discount ",  style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
               "116".tr,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text( "$totalprice",
                    style:  TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   Text("127".tr,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColor.primaryColor)),
                ],
              ),
            ],
          ),
     
        ],
      ),
    );
  }
}
