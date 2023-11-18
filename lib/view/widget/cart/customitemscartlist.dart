import 'package:cached_network_image/cached_network_image.dart';
import 'package:EMOOL/core/constant/color.dart';
import 'package:EMOOL/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomItemsCartList extends StatelessWidget {
  final String name;
  final String price;
  final String count;
  final String imagename;
  final void Function()? onAdd;
  final void Function()? onRemove;
  const CustomItemsCartList({
    Key? key,
    required this.name,
    required this.price,
    required this.count,
    required this.imagename,
    required this.onAdd,
    required this.onRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: MediaQuery.of(context).size.width / 1,
      height: 115,
      decoration: ShapeDecoration(
        color: Color(0xFFEEEEEE),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.80, color: AppColor.primaryColor),
          borderRadius: BorderRadius.circular(9),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 3,
            top: 4,
            child: Container(
              width: 332,
              height: 107,
              child: Stack(
                children: [
                  Positioned(
                    left: 109,
                    top: 47,
                    child: Row(
                      children: [
                        Text(
                          price,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Karla',
                            fontWeight: FontWeight.w500,
                            height: 0.07,
                          ),
                        ),
                        Text(
                          "127".tr,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Karla',
                            fontWeight: FontWeight.w500,
                            height: 0.07,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 109,
                    top: 19,
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Karla',
                        fontWeight: FontWeight.w500,
                        height: 0.05,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 102,
                      height: 107,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(
                            "${AppLink.imagestItems}/$imagename",
                          ),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x33000000),
                            blurRadius: 6,
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: 81,
            child: InkWell(
              onTap: onAdd,
              child: Container(
                width: 22,
                height: 22,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 22,
                        height: 22,
                        decoration: ShapeDecoration(
                          color: Color(0xFF0EA01D),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 6,
                      top: 15,
                      child: SizedBox(
                        width: 8,
                        height: 11,
                        child: Text(
                          '+',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Karla',
                            fontWeight: FontWeight.w500,
                            height: 0.04,
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
            right: 80,
            top: 81,
            child: InkWell(
              onTap: onRemove,
              child: Container(
                width: 22,
                height: 22,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 22,
                        height: 22,
                        decoration: ShapeDecoration(
                          color: Color(0xFF279797),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 6,
                      top: 9,
                      child: Text(
                        '_',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Karla',
                          fontWeight: FontWeight.w500,
                          height: 0.08,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 40,
            top: 82,
            child: Container(
              width: 31,
              height: 18,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.20, color: Color(0xFF279797)),
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
            ),
          ),
          Positioned(
            right: 50,
            top: 95,
            child: Text(
              count,
              style: TextStyle(
                color: Color(0xFF279797),
                fontSize: 14,
                fontFamily: 'Karla',
                fontWeight: FontWeight.w500,
                height: 0.06,
              ),
            ),
          ),
        ],
      ),

      //     ],
      //   ),
      // ),
    );
  }
}
