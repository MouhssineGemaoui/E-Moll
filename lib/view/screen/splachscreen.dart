import 'package:EMOOL/core/constant/color.dart';
import 'package:EMOOL/core/constant/imgaeasset.dart';
import 'package:EMOOL/view/screen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class splach_screen extends StatefulWidget {
  const splach_screen({super.key});

  @override
  State<splach_screen> createState() => _splach_screenState();
}

class _splach_screenState extends State<splach_screen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (_) => const HomeScreen()));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return 
          Scaffold(
            backgroundColor: AppColor.white,
            body :
             Center(child: Image.asset(AppImageAsset.logosplach)));
  }
}