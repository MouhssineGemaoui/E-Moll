import 'package:EMOOL/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class PriceAndCountItems extends StatelessWidget {
  final void Function()? onAdd;
  final void Function()? onRemove;
  final String count;
  const PriceAndCountItems(
      {Key? key,
      required this.onAdd,
      required this.onRemove,
      required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: Row(
        children: [
          Text(
            '132'.tr,
            style: GoogleFonts.hanuman(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              height: 0.06,
            ),
          ),
          Container(
            height: 30,
            width: 30,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: InkWell(
                    onTap: onRemove,
                    child: Container(
                      width: 18,
                      height: 18,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 18,
                              height: 18,
                              decoration: ShapeDecoration(
                                color: Color(0xFF279797),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 6,
                            top: 12,
                            child: Text(
                              '-',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Karla',
                                fontWeight: FontWeight.w500,
                                height: 0.05,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            width: 40,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 30,
                    height: 20,
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
                  left: 10,
                  top: 13,
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
          ),
          Container(
            height: 30,
            width: 30,
            child: Stack(
              children: [
                InkWell(
                  onTap: onAdd,
                  child: Container(
                    width: 18,
                    height: 18,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 18,
                            height: 18,
                            decoration: ShapeDecoration(
                              color: Color(0xFF0EA01D),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 5,
                          top: 12,
                          child: SizedBox(
                            width: 8,
                            height: 11,
                            child: Text(
                              '+',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FoodCounter extends StatelessWidget {
  final void Function()? onAdd;
  final void Function()? onRemove;
  final String count;
  const FoodCounter(
      {super.key,
      required this.onAdd,
      required this.onRemove,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      // decoration: BoxDecoration(
      //   border: Border.all(
      //     width: 2.5,
      //     color: AppColor.primaryColor,
      //   ),
      //   borderRadius: BorderRadius.circular(25),
      // ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50,
              height: 39,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColor.primaryColor),
              child: IconButton(
                onPressed: onRemove,
                icon: const Icon(Iconsax.minus, color: AppColor.white),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              count,
              style: TextStyle(
                color: AppColor.primaryColor,
                fontSize: 14,
                fontFamily: 'Karla',
                fontWeight: FontWeight.w500,
                height: 1.1,
              ),
            ),
            const SizedBox(width: 5),
            Container(
              width: 50,
              height: 39,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColor.primaryColor),
              child: IconButton(
                onPressed: onAdd,
                icon: const Icon(Iconsax.add, color: AppColor.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
