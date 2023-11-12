import 'package:EMOOL/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButton({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(top: 10, right: 20, left: 20),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 5),
        onPressed: onPressed,
        color: AppColor.primaryColor,
        textColor: Colors.white,
        child: Text(text, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}

class CustomButton1 extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButton1({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 5),
        onPressed: onPressed,
        color: AppColor.white,
        textColor: Colors.green,
        child: Text(text, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}


class CustomButton2 extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButton2({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 5),
        onPressed: onPressed,
        color: AppColor.white,
        textColor: Colors.red,
        child: Text(text, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}