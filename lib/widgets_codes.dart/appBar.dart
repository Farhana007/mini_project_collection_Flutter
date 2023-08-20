import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:velocity_x/velocity_x.dart';
import 'timer_widget.dart';


class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
             title: "T A B B A R".text.make(),
          ),
        
          body: Column(
             children:  [
               TabBar(
                   tabs:[
                     Tab(
                       icon: Icon(Icons.h_mobiledata),
                     ),
                     Tab(
                       icon: Icon(Icons.settings),
                     ),
                     Tab(
                       icon: Icon(Icons.cabin),
                     ),

                   ] ),

               Expanded(child:
               TabBarView(children: [
                 Center(
                   child: TimerWe()
                 ),
                 Center(
                   child: Container(
                     child: Text("Settings"),
                   ),
                 ),
                 Center(
                   child: Container(
                     child: Text("Share"),
                   ),
                 ),
               ])
               )
             ],
          ),
        ));
  }
}
