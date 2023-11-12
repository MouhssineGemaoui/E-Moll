import 'dart:io';

import 'package:EMOOL/controller/home_controller.dart';
import 'package:EMOOL/controller/settings_controller.dart';
import 'package:EMOOL/core/constant/color.dart';
import 'package:EMOOL/core/constant/imgaeasset.dart';
import 'package:EMOOL/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.put(SettingsController());
    HomeControllerImp controllerhome = Get.put(HomeControllerImp());
    return Container(
      child: ListView(
        children: [
          Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(height: Get.width / 3.7, color: AppColor.primaryColor),
                Positioned(
                    top: Get.width / 4.9,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100)),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: AppColor.primaryColor,
                            backgroundImage: AssetImage(AppImageAsset.avatar),
                          ),
                        ),
                            Text("${controllerhome.username}" , style: TextStyle(color: AppColor.primaryColor),),
                        Text("${controllerhome.email}"
                        ),
                    
                      ],
                    )),
              ]),
          SizedBox(height: 130),
             Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                ListTile(
                  onTap: () {
                    Get.toNamed(AppRoute.notification);
                  },
                  leading: Icon(Icons.notifications_none),
                  title: Text("70".tr),
                ),
                ListTile(
                  onTap: () {
                    Get.toNamed(AppRoute.orderspending);
                  },
                  leading: Icon(Icons.card_travel),
                  title: Text("71".tr),
                ),
                ListTile(
                  onTap: () {
                    Get.toNamed(AppRoute.ordersarchive);
                  },
                  leading: Icon(Icons.archive_outlined),
                  title: Text("72".tr),
                ), ListTile(
                  onTap: () {
                    Get.toNamed(AppRoute.language);
                  },
                  leading: Icon(Icons.translate_rounded),
                  title: Text("73".tr),
                ),
                ListTile(
                  onTap: () {
                    Get.toNamed(AppRoute.addressview);
                  },
                  leading: Icon(Icons.location_on_outlined),
                  title: Text("74".tr),
                ),
                // ListTile(
                //   onTap: () {
                //     Get.toNamed(AppRoute.Aboutus);
                //   },
                //   leading: Icon(Icons.help_outline_rounded),
                //   title: Text("75".tr),
                // ),
                ListTile(
                  onTap: () {
                  openWhatsapp(context: context ,number: "+2120674414182" ,text: "type your problem \n اكتب مشكلتك");
                  },
                  leading: Icon(Icons.phone_callback_outlined),
                  title: Text("76".tr),
                ),
                ListTile(
                  onTap: () {
                    QuickAlert.show(
   context: context,
   type: QuickAlertType.confirm,
   text: '78'.tr,
   confirmBtnText: '96'.tr,
   title: "",
 
   confirmBtnColor: Colors.red,
   onConfirmBtnTap: () {
       controller.logout();
   },
  );
                  },
                  title: Text("77".tr),
                  leading: Icon(Icons.exit_to_app),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
void openWhatsapp(
      {required BuildContext context,
      required String text,
      required String number}) async {
    var whatsapp = number; //+92xx enter like this
    var whatsappURlAndroid =
        "whatsapp://send?phone=" + whatsapp + "&text=$text";
    var whatsappURLIos = "https://wa.me/$whatsapp?text=${Uri.tryParse(text)}";
    if (Platform.isIOS) {
      // for iOS phone only
      if (await canLaunchUrl(Uri.parse(whatsappURLIos))) {
        await launchUrl(Uri.parse(
          whatsappURLIos,
        ));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Whatsapp not installed")));
      }
    } else {
      // android , web
      if (await canLaunchUrl(Uri.parse(whatsappURlAndroid))) {
        await launchUrl(Uri.parse(whatsappURlAndroid));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Whatsapp not installed")));
      }
    }
  }