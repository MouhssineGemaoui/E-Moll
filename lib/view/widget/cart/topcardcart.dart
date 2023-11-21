import 'package:EMOOL/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopCardCart extends StatelessWidget {
  final String message;
  final String message1;
  final String message2;
  const TopCardCart({
    Key? key,
    required this.message,
    required this.message1,
    required this.message2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      margin: EdgeInsets.symmetric(horizontal: 20),
      // height: 20,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 223, 223, 223),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Text(message,
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColor.black)),
            Text(message1, style: GoogleFonts.aBeeZee(color: AppColor.black)),
            Text(message2,
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColor.black)),
          ],
        ),
      ),
    );
  }
}
