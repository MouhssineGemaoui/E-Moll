import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;

  const CustomTextFormAuth(
      {Key? key,
      this.obscureText,
      this.onTapIcon,
      required this.hinttext,
      required this.labeltext,
      required this.iconData,
      required this.mycontroller,
      required this.valid,
      required this.isNumber
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        
        keyboardType: isNumber
        

            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
            
        validator: valid,
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false  ? false : true,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(labeltext)),
            suffixIcon: InkWell(child: Icon(iconData), onTap: onTapIcon),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}



class CustomTextFormAuthemail extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool? obscureText;
  final void Function()? onTapIcon;

  const CustomTextFormAuthemail(
      {Key? key,
      this.obscureText,
      this.onTapIcon,
      required this.hinttext,
      required this.labeltext,
      required this.iconData,
      required this.mycontroller,
      required this.valid,
     })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        keyboardType:  TextInputType.emailAddress,
        validator: valid,
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false  ? false : true,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(labeltext)),
            suffixIcon: InkWell(child: Icon(iconData), onTap: onTapIcon),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}


class CustomTextFormAuthaddress extends StatelessWidget {
  final String labeltext;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool? obscureText;
  final void Function()? onTapIcon;

  const CustomTextFormAuthaddress(
      {Key? key,
      this.obscureText,
      this.onTapIcon,
      required this.labeltext,
      required this.mycontroller,
      required this.valid,
     })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: 60,
      child: TextFormField(
        
        keyboardType:  TextInputType.emailAddress,
        validator: valid,
        controller:  mycontroller,
        decoration: InputDecoration(
        labelText: labeltext ),
           
      ),
    );
  }
}

class CustomTextFormAuthaddress1 extends StatelessWidget {
  final String labeltext;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool? obscureText;
  final void Function()? onTapIcon;
    final bool isNumber;


  const CustomTextFormAuthaddress1(
      {Key? key,
      this.obscureText,
      this.onTapIcon,
      required this.labeltext,
      required this.mycontroller,
      required this.valid, required this.isNumber,
     })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: 60,
      child: TextFormField(
           keyboardType: isNumber
        

            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
            
       
        validator: valid,
        controller: mycontroller,
        decoration: InputDecoration(
        labelText: labeltext ),
           
      ),
    );
  }
}

