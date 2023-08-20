import 'package:flutter/material.dart';
import 'blocks.dart';

import 'package:velocity_x/velocity_x.dart';


class HomePageMain extends StatefulWidget {
  const HomePageMain({Key? key}) : super(key: key);

  @override
  State<HomePageMain> createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: 20,
             itemBuilder: (context,index){
                return  GridBox();
             }),
       )
    );
  }
}
