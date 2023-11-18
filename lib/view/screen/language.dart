
import 'package:EMOOL/core/localization/changelocal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 


class language extends StatefulWidget {
  const language({Key? key}) : super(key: key);
  @override
  State<language> createState() => _languageState();
}

class _languageState extends State<language> {

  @override
  Widget build(BuildContext context) {
      LocaleController controllerlang = Get.find();
    return Scaffold(
          appBar: AppBar(
            title: Text(
           'language',
       
        ),
      ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          color: Colors.white,
          child: Wrap(children: [
            ListTile(
              title: Text("90".tr),
              subtitle: Text("90".tr),
              trailing: Icon(Icons.chevron_right),
              onTap: () {

                Get.defaultDialog(
                  title: '95'.tr,
            content: Column(children: [
              Wrap(
                children: [
                  Text("98".tr),
                  Text("90".tr),
                ],
              ),
           
           ],),  
            actions: [
              MaterialButton(onPressed:() {Get.back();},child: Text('No',style: TextStyle(color: Colors.red),),),               
              MaterialButton(onPressed:() {
                     controllerlang.changeLang('ar');
                     Get.back();
              },child: Text('96'.tr,style: TextStyle(color: Colors.green),),)                 
              ]
                );
      
              
            },),
              ListTile(
              title: Text("91".tr),
              subtitle: Text("91".tr),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                     Get.defaultDialog(
                  title: '95'.tr,
            content: Column(children: [
              Wrap(
                children: [
                  Text("98".tr),
                  Text("91".tr),
                ],
              ),
           
           ],),  
            actions: [
              MaterialButton(onPressed:() {Get.back();},child: Text('No',style: TextStyle(color: Colors.red),),),               
              MaterialButton(onPressed:() {
                            controllerlang.changeLang('en');
                     Get.back();
              },child: Text('96'.tr,style: TextStyle(color: Colors.green),),)                 
              ]
                );
            },),  ListTile(
              title: Text("92".tr),
              subtitle: Text("92".tr),
              trailing: Icon(Icons.chevron_right),
              onTap: () {             
                  Get.defaultDialog(
                  title: '95'.tr,
            content: Column(children: [
              Wrap(
                children: [
                  Text("98".tr),
                  Text("92".tr),
                ],
              ),
           ],),  
            actions: [
              MaterialButton(onPressed:() {Get.back();},child: Text('No',style: TextStyle(color: Colors.red),),),               
              MaterialButton(onPressed:() {
                    controllerlang.changeLang('fr');
                     Get.back();
              },child: Text('96'.tr,style: TextStyle(color: Colors.green),),)                 
              ]
                );
            },),  
          ]),
        ));
  }
}
