import 'package:EMOOL/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CardShppingAddressCheckout extends StatelessWidget {
  final String name;
  final String ville;
  final String address;
  final String email;
  final String numero;
  final bool isactive;
  const CardShppingAddressCheckout(
      {Key? key,
      required this.isactive, required this.name, required this.ville, required this.address, required this.numero, required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10) 
      ),
      child:

   Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    decoration:  BoxDecoration(
       borderRadius: BorderRadius.circular(10),
      border:  Border.all(color: isactive ? AppColor.primaryColor  : AppColor.thirdColor 
      ,
      width: isactive ? 3 : 1)), 
    width: 310,
    height: 230,
    child: Stack(
        children: [
            Positioned(
                left: 0,
                top: 19,
                child: Text(
                    '139'.tr,
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 14,
                       
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                    ),
                ),
            ),  Positioned(
                left: 2,
                top: 36,
                child: Text(
                  name,
                    style: GoogleFonts.rubik(
                        color: Color(0xFF707070),
                        fontSize: 12,
                    
                        fontWeight: FontWeight.w400,
                        height: 0.10,
                    ),
                ),
            ),
            Positioned(
                left: 2,
                top: 128,
                child: Text(
                    address,
                    style: GoogleFonts.rubik(
                        color: Color(0xFF707070),
                        fontSize: 14,
                    
                        fontWeight: FontWeight.w400,
                        height: 0.08,
                    ),
                ),
            ),
     
            Positioned(
                left: 2,
                top: 172,
                child: Text(
                   numero,
                    style: GoogleFonts.rubik(
                        color: Color(0xFF707070),
                        fontSize: 14,
                    
                        fontWeight: FontWeight.w400,
                        height: 0.08,
                    ),
                ),
            ),
            Positioned(
                left: 0,
                top: 78,
                child: Text(
                    ville,
                    style: GoogleFonts.rubik(
                        color: Color(0xFF707070),
                        fontSize: 14,
                    
                        fontWeight: FontWeight.w400,
                        height: 0.08,
                    ),
                ),
            ),
          
            Positioned(
                left: 0,
                top: 58,
                child: Text(
                    '140'.tr,
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 14,
                    
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                    ),
                ),
            ),
            Positioned(
                left: 0,
                top: 108,
                child: Text(
                    '141'.tr,
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 14,
                    
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                    ),
                ),
            ),
            Positioned(
                left: 0,
                top: 150,
                child: Text(
                    '142'.tr,
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 14,
                    
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                    ),
                ),
            ),
            Positioned(
                left: 0,
                top: 197,
                child: Text(
                    '143'.tr,
                    style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 14,
                    
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                    ),
                ),
            ),
                   Positioned(
                left: 0,
                top: 215,
                child: Text(
                  email,
                    style: GoogleFonts.rubik(
                        color: Color(0xFF707070),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        // textDecoration: TextDecoration.underline,
                        height: 0.08,
                    ),
                ),
            ),
            // Positioned(
            //     left: 264,
            //     top: 0,
            //     child: Text(
            //         'modifier',
            //         style: GoogleFonts.rubik(
            //             color: Color(0xFF787878),
            //             fontSize: 12,
            //         
            //             fontWeight: FontWeight.w400,
            //             height: 0.10,
            //         ),
            //     ),
            // ),
        ],
    ),
));
  }}