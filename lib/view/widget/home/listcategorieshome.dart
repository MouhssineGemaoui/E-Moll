import 'package:EMOOL/controller/home_controller.dart';
import 'package:EMOOL/core/constant/color.dart';
import 'package:EMOOL/data/model/categoriesmodel.dart';
import 'package:EMOOL/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListCategoriesHome extends GetView<HomeControllerImp> {
  const ListCategoriesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 3.5,
      ),
      child: SizedBox(
        height: 50,
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 20),
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
            width: MediaQuery.of(context).size.width / 7.2,
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
                      color: AppColor.white,
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                      width: MediaQuery.of(context).size.height / 1,
                      height: 33.33,
                      child: Image.network(
                          '${AppLink.imagestCategories}/${categoriesModel.categoriesImage}')),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
