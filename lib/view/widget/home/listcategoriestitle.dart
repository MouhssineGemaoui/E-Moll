import 'package:EMOOL/controller/home_controller.dart';
import 'package:EMOOL/core/constant/color.dart';
import 'package:EMOOL/core/functions/translatefatabase.dart';
import 'package:EMOOL/data/model/categoriesmodel.dart';
import 'package:EMOOL/data/model/categoriesmodel1.dart';
import 'package:EMOOL/linkapi.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class listcategoriestitle1 extends GetView<HomeControllerImp> {
  const listcategoriestitle1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width / 1.1,
      height: 20,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 0),
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return categoriestitle1(
            i: index,
            categories1Model:
                Categories1Model.fromJson(controller.categories1[index]),
          );
        },
      ),
    );
  }
}

class categoriestitle1 extends GetView<HomeControllerImp> {
  final Categories1Model categories1Model;
  final int? i;
  const categoriestitle1(
      {Key? key, required this.categories1Model, required this.i})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          controller.goToItems(controller.categories, i!,
              categories1Model.categoriesId.toString());
        },
        child: Column(
          children: [
            if (categories1Model.categoriesId == 6)
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (categories1Model.categoriesId == 6)
                        Container(
                          child: Text(
                            '${translateDatabase(categories1Model.categoriesNamaAr, categories1Model.categoriesName)}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      // Spacer(),
                      if (categories1Model.categoriesId == 6)
                        Container(
                          child: Row(
                            children: [
                                 Text(
                                'See all ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF043BFF),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 12,
                                color: Color(0xFF043BFF),
                              )
                            ],
                          ),
                        )
                    ]),
              ),
          ],
        ));
  }
}

class listcategoriestitle2 extends GetView<HomeControllerImp> {
  const listcategoriestitle2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width / 1.1,
      height: 20,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 0),
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return categoriestitle2(
            i: index,
            categories1Model:
                Categories1Model.fromJson(controller.categories1[index]),
          );
        },
      ),
    );
  }
}

class categoriestitle2 extends GetView<HomeControllerImp> {
  final Categories1Model categories1Model;
  final int? i;
  const categoriestitle2(
      {Key? key, required this.categories1Model, required this.i})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          controller.goToItems(controller.categories, i!,
              categories1Model.categoriesId.toString());
        },
        child: Column(
          children: [
            if (categories1Model.categoriesId == 8)
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (categories1Model.categoriesId == 8)
                        Container(
                          child: Text(
                            '${translateDatabase(categories1Model.categoriesNamaAr, categories1Model.categoriesName)}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      // Spacer(),
                      if (categories1Model.categoriesId == 8)
                        Container(
                          child: Row(
                            children: [
                                 Text(
                                'See all ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF043BFF),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 12,
                                color: Color(0xFF043BFF),
                              )
                            ],
                          ),
                        )
                    ]),
              ),
          ],
        ));
  }
}

class listcategoriestitle3 extends GetView<HomeControllerImp> {
  const listcategoriestitle3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width / 1.1,
      height: 20,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 0),
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return categoriestitle3(
            i: index,
            categories1Model:
                Categories1Model.fromJson(controller.categories1[index]),
          );
        },
      ),
    );
  }
}

class categoriestitle3 extends GetView<HomeControllerImp> {
  final Categories1Model categories1Model;
  final int? i;
  const categoriestitle3(
      {Key? key, required this.categories1Model, required this.i})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          controller.goToItems(controller.categories, i!,
              categories1Model.categoriesId.toString());
        },
        child: Column(
          children: [
            if (categories1Model.categoriesId == 12)
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (categories1Model.categoriesId == 12)
                        Container(
                          child: Text(
                            '${translateDatabase(categories1Model.categoriesNamaAr, categories1Model.categoriesName)}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      // Spacer(),
                      if (categories1Model.categoriesId == 12)
                        Container(
                          child: Row(
                            children: [
                                 Text(
                                'See all ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF043BFF),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 12,
                                color: Color(0xFF043BFF),
                              )
                            ],
                          ),
                        )
                    ]),
              ),
          ],
        ));
  }
}

class listcategoriestitle4 extends GetView<HomeControllerImp> {
  const listcategoriestitle4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width / 1.1,
      height: 20,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 0),
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return categoriestitle4(
            i: index,
            categories1Model:
                Categories1Model.fromJson(controller.categories1[index]),
          );
        },
      ),
    );
  }
}

class categoriestitle4 extends GetView<HomeControllerImp> {
  final Categories1Model categories1Model;
  final int? i;
  const categoriestitle4(
      {Key? key, required this.categories1Model, required this.i})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          controller.goToItems(controller.categories, i!,
              categories1Model.categoriesId.toString());
        },
        child: Column(
          children: [
            if (categories1Model.categoriesId == 17)
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (categories1Model.categoriesId == 17)
                        Container(
                          child: Text(
                            '${translateDatabase(categories1Model.categoriesNamaAr, categories1Model.categoriesName)}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      // Spacer(),
                      if (categories1Model.categoriesId == 17)
                        Container(
                          child: Row(
                            children: [
                                 Text(
                                'See all ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF043BFF),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 12,
                                color: Color(0xFF043BFF),
                              )
                            ],
                          ),
                        )
                    ]),
              ),
          ],
        ));
  }
}

class listcategoriestitle5 extends GetView<HomeControllerImp> {
  const listcategoriestitle5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width / 1.1,
      height: 20,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 0),
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return categoriestitle5(
            i: index,
            categories1Model:
                Categories1Model.fromJson(controller.categories1[index]),
          );
        },
      ),
    );
  }
}

class categoriestitle5 extends GetView<HomeControllerImp> {
  final Categories1Model categories1Model;
  final int? i;
  const categoriestitle5(
      {Key? key, required this.categories1Model, required this.i})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          controller.goToItems(controller.categories, i!,
              categories1Model.categoriesId.toString());
        },
        child: Column(
          children: [
            if (categories1Model.categoriesId == 18)
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (categories1Model.categoriesId == 18)
                        Container(
                          child: Text(
                            '${translateDatabase(categories1Model.categoriesNamaAr, categories1Model.categoriesName)}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      // Spacer(),
                      if (categories1Model.categoriesId == 18)
                        Container(
                          child: Row(
                            children: [
                                Text(
                                'See all ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF043BFF),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 12,
                                color: Color(0xFF043BFF),
                              )
                            ],
                          ),
                        )
                    ]),
              ),
          ],
        ));
  }
}

class listcategoriesname extends GetView<HomeControllerImp> {
  const listcategoriesname({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width / 1.1,
      height: 20,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 0),
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return categoriesname(
            i: index,
            categories1Model:
                Categories1Model.fromJson(controller.categories1[index]),
          );
        },
      ),
    );
  }
}

class categoriesname extends GetView<HomeControllerImp> {
  final Categories1Model categories1Model;
  final int? i;
  const categoriesname(
      {Key? key, required this.categories1Model, required this.i})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          controller.goToItems(controller.categories, i!,
              categories1Model.categoriesId.toString());
        },
        child: Column(
          children: [
            if (categories1Model.categoriesId == 6)
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (categories1Model.categoriesId == 6)
                        Container(
                          child: Text(
                            'Categories',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      // Spacer(),
                      if (categories1Model.categoriesId == 6)
                        Container(
                          child: Row(
                            children: [
                              Text(
                                'See all ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF043BFF),
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 12,
                                color: Color(0xFF043BFF),
                              )
                            ],
                          ),
                        )
                    ]),
              ),
          ],
        ));
  }
}
