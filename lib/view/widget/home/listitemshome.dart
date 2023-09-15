import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommercecourse/controller/home_controller.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/functions/translatefatabase.dart';
import 'package:ecommercecourse/data/model/itemsmodel.dart';
import 'package:ecommercecourse/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListItemsHome extends GetView<HomeControllerImp> {
  const ListItemsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
          itemCount: controller.items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return ItemsHome(
                itemsModel: ItemsModel.fromJson(controller.items[i]));
          }),
    );
  }
}

class ItemsHome extends StatelessWidget {
  final ItemsModel itemsModel;
  const ItemsHome({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 106,
      height: 170,
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
            child: Container(
              width: 99,
              height: 99,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "${AppLink.imageItems}/${itemsModel.itemsImage}",
                  ),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(167),
                ),
              ),
            ),
          ),
          Positioned(
            left: 5,
            top: 112,
            child: Text(
              'Bracelet rico',
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
            child: Text(
              "${itemsModel.itemsPrice} dh",
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
            left: 85,
            top: 8,
            child: Container(
              width: 14,
              height: 14,
              decoration: ShapeDecoration(
                color: Color(0xFF279797),
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned(
            left: 88,
            top: 9,
            child: Text(
              '+',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Karla',
                fontWeight: FontWeight.w500,
                height: 0.85,
              ),
            ),
          ),
          Positioned(
            left: 82,
            top: 100,
            child: Container(
                width: 20,
                height: 20,
                child: Icon(
                  Icons.favorite_border,
                  size: 18,
                  color: Color(0xFFD86868),
                )),
          ),
          Positioned(
            left: 81,
            top: 117,
            child: Container(
                width: 20,
                height: 20,
                child: Icon(
                  Icons.shopify_rounded,
                  color: Color(0xFF0EA01D),
                )),
          ),
        ],
      ),
    );
  }
}
