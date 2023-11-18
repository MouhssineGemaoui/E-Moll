import 'package:EMOOL/controller/home_controller.dart';
import 'package:EMOOL/core/constant/color.dart';
import 'package:EMOOL/core/functions/translatefatabase.dart';
import 'package:EMOOL/data/model/categoriesmodel.dart';
import 'package:EMOOL/data/model/categoriesmodel1.dart';
import 'package:EMOOL/linkapi.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ListCategoriesHome extends GetView<HomeControllerImp> {
  const ListCategoriesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color.fromARGB(0, 240, 240, 240),
        margin: EdgeInsets.symmetric(
        horizontal: 2,
      ),
      child: SizedBox(
        height: 80,
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 0),
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
             if (categoriesModel.categoriesId != 1)
          // Container(
          //   width: MediaQuery.of(context).size.width / 7.2,
          //   height: 50,
          //   child: Stack(
          //     children: [
             
          //       Positioned(
          //         left: 0,
          //         top: 0,
          //         child: Container(
          //           width: 50,
          //           height: 50,
          //           decoration: ShapeDecoration(
          //             color: AppColor.white,
          //             shape: OvalBorder(),
          //           ),
          //         ),
          //       ),
          //       Center(
          //         child: Container(
          //             width: MediaQuery.of(context).size.height / 1,
          //             height: 33.33,
          //             child: Image.network(
          //                 '${AppLink.imagestCategories}/${categoriesModel.categoriesImage}')),
          //       ),
          //     ],
          //   ),
          // )
          Container(
          color:AppColor.white ,
              width: 75,
    height: 75,
    child: Stack(
        children: [
            Positioned(
                left: 9,
                top: 9,
                child: Container(
                    width: 58,
                    height: 39,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                          '${AppLink.imagestCategories}/${categoriesModel.categoriesImage}')),
                        ),
                    
                ),
            ),
            Positioned(
                left: 9,
                top: 55,
                child: SizedBox(
                    width: 57,
                    height: 11,
                    child: Text(
                        '${translateDatabase(categoriesModel.categoriesNamaAr , categoriesModel.categoriesName)}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 9,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                        ),
                    ),
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



class ListCategories1Home extends GetView<HomeControllerImp> {
  const ListCategories1Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: SizedBox(
        
     width: MediaQuery.of(context).size.width / 1.1,
             height: MediaQuery.of(context).size.height / 5.6 ,

        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 0),
          itemCount: controller.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return 
            Categories1(
              i: index,
             categories1Model:
                 Categories1Model.fromJson(controller.categories1[index]),
            );
          },
        ),
      ),
    );
  }
}

class Categories1 extends GetView<HomeControllerImp> {
  final Categories1Model categories1Model;
  final int? i;
  const Categories1({Key? key, required this.categories1Model, required this.i})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItems(
            controller.categories,  i!, categories1Model.categoriesId.toString() );
      },
      child: Column(
        children: [
             if (categories1Model.categoriesId == 6)

             Container(
   
      child: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width / 1.1,
             height: MediaQuery.of(context).size.height / 6 ,
   
          decoration: BoxDecoration(
          image: DecorationImage(image: 
            CachedNetworkImageProvider(
                          '${AppLink.imagestCategories}/${categories1Model.categoriesImage}'),
                          fit: BoxFit.fill
                          ),
                
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(20)),
        
        ),
      ]),)
      ])
    );
  }
}

class ListCategories2Home extends GetView<HomeControllerImp> {
  const ListCategories2Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: SizedBox(
     width: MediaQuery.of(context).size.width / 1.1,
     height: MediaQuery.of(context).size.height / 5.6 ,

        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 0),
          itemCount: controller.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              child: Categories2(
                i: index,
               categories1Model:
                   Categories1Model.fromJson(controller.categories1[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Categories2 extends GetView<HomeControllerImp> {
  final Categories1Model categories1Model;
  final int? i;
  const Categories2({Key? key, required this.categories1Model, required this.i})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItems(
            controller.categories,  i!, categories1Model.categoriesId.toString() );
      },
      child: Column(
        children: [
            //  if (categories1Model.categoriesDatetime == 1)
             if (categories1Model.categoriesId == 8)

             Container(
   
      child: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width / 1.1,
             height: MediaQuery.of(context).size.height / 6 ,
   
          decoration: BoxDecoration(
          image: DecorationImage(image: 
            CachedNetworkImageProvider(
                          '${AppLink.imagestCategories}/${categories1Model.categoriesImage}'),
                          fit: BoxFit.fill
                          ),
                
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(20)),
        
        ),
      ]),)
      ])
    );
  }
}



class ListCategories3Home extends GetView<HomeControllerImp> {
  const ListCategories3Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: SizedBox(
     width: MediaQuery.of(context).size.width / 1.1,
     height: MediaQuery.of(context).size.height / 5.6 ,

        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 0),
          itemCount: controller.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              child: Categories3(
                i: index,
               categories1Model:
                   Categories1Model.fromJson(controller.categories1[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Categories3 extends GetView<HomeControllerImp> {
  final Categories1Model categories1Model;
  final int? i;
  const Categories3({Key? key, required this.categories1Model, required this.i})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItems(
            controller.categories,  i!, categories1Model.categoriesId.toString() );
      },
      child: Column(
        children: [
            //  if (categories1Model.categoriesDatetime == 1)
             if (categories1Model.categoriesId == 12)

             Container(
   
      child: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width / 1.1,
             height: MediaQuery.of(context).size.height / 6 ,
   
          decoration: BoxDecoration(
          image: DecorationImage(image: 
            CachedNetworkImageProvider(
                          '${AppLink.imagestCategories}/${categories1Model.categoriesImage}'),
                          fit: BoxFit.fill
                          ),
                
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(20)),
        
        ),
      ]),)
      ])
    );
  }
}




class ListCategories4Home extends GetView<HomeControllerImp> {
  const ListCategories4Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: SizedBox(
     width: MediaQuery.of(context).size.width / 1.1,
     height: MediaQuery.of(context).size.height / 5.6 ,

        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 0),
          itemCount: controller.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              child: Categories4(
                i: index,
               categories1Model:
                   Categories1Model.fromJson(controller.categories1[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Categories4 extends GetView<HomeControllerImp> {
  final Categories1Model categories1Model;
  final int? i;
  const Categories4({Key? key, required this.categories1Model, required this.i})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItems(
            controller.categories,  i!, categories1Model.categoriesId.toString() );
      },
      child: Column(
        children: [
            //  if (categories1Model.categoriesDatetime == 1)
             if (categories1Model.categoriesId == 17)

             Container(
   
      child: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width / 1.1,
             height: MediaQuery.of(context).size.height / 6 ,
   
          decoration: BoxDecoration(
          image: DecorationImage(image: 
            CachedNetworkImageProvider(
                          '${AppLink.imagestCategories}/${categories1Model.categoriesImage}'),
                          fit: BoxFit.fill
                          ),
                
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(20)),
        
        ),
      ]),)
      ])
    );
  }
}




class ListCategories5Home extends GetView<HomeControllerImp> {
  const ListCategories5Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: SizedBox(
     width: MediaQuery.of(context).size.width / 1.1,
     height: MediaQuery.of(context).size.height / 5.6 ,

        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 0),
          itemCount: controller.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              child: Categories5(
                i: index,
               categories1Model:
                   Categories1Model.fromJson(controller.categories1[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Categories5 extends GetView<HomeControllerImp> {
  final Categories1Model categories1Model;
  final int? i;
  const Categories5({Key? key, required this.categories1Model, required this.i})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItems(
            controller.categories,  i!, categories1Model.categoriesId.toString() );
      },
      child: Column(
        children: [
            //  if (categories1Model.categoriesDatetime == 1)
             if (categories1Model.categoriesId == 18)

             Container(
   
      child: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width / 1.1,
             height: MediaQuery.of(context).size.height / 6 ,
   
          decoration: BoxDecoration(
          image: DecorationImage(image: 
            CachedNetworkImageProvider(
                          '${AppLink.imagestCategories}/${categories1Model.categoriesImage}'),
                          fit: BoxFit.fill
                          ),
                
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(20)),
        
        ),
      ]),)
      ])
    );
  }
}