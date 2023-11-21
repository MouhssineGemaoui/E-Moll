// ignore_for_file: deprecated_member_use

import 'package:EMOOL/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeEnglish = ThemeData(
  // fontFamily: "PlayfairDisplay",
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: AppColor.primaryColor),
  appBarTheme: AppBarTheme( 
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColor.primaryColor),
    titleTextStyle:  GoogleFonts.karla(
        color: Color.fromRGBO(39, 151, 151, 1),
        fontWeight: FontWeight.bold,
        // fontFamily: "PlayfairDisplay",
        fontSize: 25),
    backgroundColor: Colors.grey[50],
  ),
  textTheme:  TextTheme(
      headline1:  GoogleFonts.karla(
          fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
      headline2:  GoogleFonts.karla(
          fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
      bodyText1:  GoogleFonts.karla(
          height: 2,
          color: AppColor.grey,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyText2:  GoogleFonts.karla(height: 2, color: AppColor.grey, fontSize: 14)),
  primarySwatch: Colors.teal,
);

ThemeData themeArabic = ThemeData(
  // fontFamily: "Cairo",
  textTheme:  TextTheme(
      headline1:  GoogleFonts.karla(
          fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
      headline2:  GoogleFonts.karla(
          fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
      bodyText1:  GoogleFonts.karla(
          height: 2,
          color: AppColor.grey,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyText2:  GoogleFonts.karla(height: 2, color: AppColor.grey, fontSize: 14)),
  primarySwatch: Colors.teal,
);
