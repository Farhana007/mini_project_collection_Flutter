import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:dream_app/messenger_ui/custom_design.dart';
import 'package:dream_app/messenger_ui/consts.dart';


class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {

  List  icon = [
    pic1,pic2,pic3,pic4,pic5,pic6,pic3,pic4,pic5,pic6
  ];



  List name = [
    "Jenny","Jouly","Jacke","James","Jimin","Maddy","Croock","Brad","Muffins","Cupcakes"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
       body: Column(
         children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(

                    decoration: InputDecoration(
                       prefixIcon: Icon(Icons.search),
                       hintText: "Search",
                   
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(30),

                       )
                    ),
              ).box.color(Colors.white10).customRounded(BorderRadius.circular(30)).make()
            ),

           10.heightBox,
           Container(

              height: 100,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                 itemCount: 10,
                  itemBuilder: (context,index){
                  return  CircularSize(icon: icon[index],
                   name: name[index]);
              }),
           ),
           10.heightBox,
           Expanded(
             flex: 3,
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0),
               child: ListView.builder(
                   scrollDirection: Axis.vertical,
                   itemCount: 10,
                   itemBuilder: (contex,index){
                     return LongSizeMess(icon: icon[index],
                     name: name[index]);
                   }),
             ),
           ),


         ],
       ),
    );
  }
}

