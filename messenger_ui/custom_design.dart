
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:velocity_x/velocity_x.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'consts.dart';










Widget CircularSize({icon, String? name}){
  return Container(
    child: Column(
       children: [
        ClipRRect(
           borderRadius: BorderRadius.circular(30),
            child: Image.asset(icon,height: 70,width: 70,)),

         name!.text.make()
       ],
    ), 
  ).box.height(75).width(75).roundedFull.make();
}


Widget LongSizeMess({icon,String? name}){
   return Row(

      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(30),
             child: Image.asset(icon,height: 60,width: 60,)),
          20.widthBox,
          5.heightBox,


          Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Container(
                 width: 250,
                 child:name!.text.align(TextAlign.start).make(),
               ),
              Container(
                width: 250,
                child: Row(
                  children: [
                    "This Message was sent before".text.make(),
                     5.widthBox,
                    ".time".text.make()
                  ],
                ),
              )
            ],
          )

      ],
   );
}



Widget StoryTile({ icon1 , icon2}){
   return Padding(
     padding: const EdgeInsets.all(12.0),
     child: Container(
         child: Stack(
           children: [
             Container(
               height: 600,
               width: 170,
               child: ClipRRect(
                   borderRadius: BorderRadius.circular(20),
                   child: Image.asset(icon1,fit: BoxFit.fill,)),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
                child:ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(icon2,height: 40,width: 40,)),
             ),
           ],
         ) ,
     ),
   );
}

