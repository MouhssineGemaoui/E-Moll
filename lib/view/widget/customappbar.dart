import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String titleappbar;
  final void Function()? onPressedIconFavorite;
  final void Function()? onPressedSearch;
  final void Function(String)? onChanged;
  final TextEditingController mycontroller;
  const CustomAppBar(
      {Key? key,
      required this.titleappbar,
      this.onPressedSearch,
      required this.onPressedIconFavorite,
      this.onChanged,
       required this.mycontroller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10 , left: 10 ,right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Expanded(
            child: TextFormField(
              textInputAction: TextInputAction.search,
          controller: mycontroller,
          onChanged: onChanged,
          decoration: InputDecoration(
            
              prefixIcon: IconButton(
                  icon: Icon(Icons.search), onPressed: onPressedSearch),
              hintText: titleappbar,
              hintStyle: TextStyle(fontSize: 18),
              border: OutlineInputBorder(
                
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
                  
              // filled: true,
              // fillColor: Colors.grey[200]
              ),
        )),
      
        Container(
          decoration: BoxDecoration(
              // color: const Color.fromARGB(83, 238, 238, 238), borderRadius: BorderRadius.circular(10)
              ),

          width: 30,
          
          child: IconButton(
              onPressed: onPressedIconFavorite,
              icon: Icon(
                Icons.favorite_border,
                size: 30,
                color: Colors.black,
              )),
        )
      ]),
    );
  }
}
