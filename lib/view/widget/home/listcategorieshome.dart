import 'package:ecommercecourse/controller/home_controller.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/functions/translatefatabase.dart';
import 'package:ecommercecourse/data/model/categoriesmodel.dart';
import 'package:ecommercecourse/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ListCategoriesHome extends GetView<HomeControllerImp> {
  const ListCategoriesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categories(
            i: index,
            categoriesModel:
                CategoriesModel.fromJson(controller.categories[index]),
          );
        },
      ),
    );
  }
}

class Categories extends GetView<HomeControllerImp> {
  final CategoriesModel categoriesModel;
  final int? i;
  const Categories({Key? key, required this.categoriesModel, required this.i})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItems(
            controller.categories, i!, categoriesModel.categoriesId.toString());
      },
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: Color(0xFFCBD0D0),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                  left: 11,
                  top: 8,
                  child: Container(
                    width: 28,
                    height: 33.33,
                    child: SvgPicture.network(
                        "${AppLink.imagestCategories}/${categoriesModel.categoriesImage}",
                        color: AppColor.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
