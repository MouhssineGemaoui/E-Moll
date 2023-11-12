import 'package:EMOOL/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';


class CardcardMethodCheckout extends StatelessWidget {
  final String title;
  final bool isActive;
  const CardcardMethodCheckout(
      {Key? key, required this.title, required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: isActive == true ? AppColor.secondColor : AppColor.thirdColor,
          borderRadius: BorderRadius.circular(20)),
      child: Text(title,
          style: TextStyle(
              color: isActive == true ? Colors.white : AppColor.secondColor,
              height: 1,
              fontWeight: FontWeight.bold)),
    );
  }
}

class CardPaymentMethodCheckout extends StatelessWidget {
  final String title;
  const CardPaymentMethodCheckout(
      {Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        QuickAlert.show(
   context: context,
   type: QuickAlertType.warning,
   title: 'coming soon!' ,
   text: 'Please select a Cash On Delivery',
   confirmBtnColor: AppColor.primaryColor
  );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        decoration: BoxDecoration(
         color:  AppColor.thirdColor,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Text(title,
                style: TextStyle(
                    height: 1,
                    fontWeight: FontWeight.bold)),
          Icon(Icons.settings_ethernet , color: AppColor.grey),
          ],
        ),
      ),
    );
  }
}
