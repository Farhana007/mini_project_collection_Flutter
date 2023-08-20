import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:dream_app/messenger_ui/custom_design.dart';
import 'package:dream_app/messenger_ui/consts.dart';

class StoriesPage extends StatefulWidget {
  const StoriesPage({Key? key}) : super(key: key);

  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {

  List  icon1 = [
    pic1,pic2,pic3,pic4,pic5,pic6,pic3,pic4,pic5,pic6
  ];

  List  icon2 = [
    spic1,spic2,spic3,spic4,spic5,spic6,spic3,spic4,spic5,spic6
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
       body: Container(
         child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
             itemCount: 10,
             itemBuilder: (contex,index){
                   return StoryTile(icon1:icon2[index],
                     icon2: icon1[index]);
             }),
       ),
    );
  }
}
