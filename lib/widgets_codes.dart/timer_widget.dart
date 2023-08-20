import 'package:flutter/material.dart';
import 'dart:async';
import 'package:velocity_x/velocity_x.dart';


class TimerWe extends StatefulWidget {
  const TimerWe({Key? key}) : super(key: key);

  @override
  State<TimerWe> createState() => _TimerWeState();
}

class _TimerWeState extends State<TimerWe> {
  int timeLeft = 5;

  //define timer function

   void _startCountDown(){
     Timer.periodic(Duration(seconds: 1),
             (timer) {

             if(timeLeft>0){
               setState(() {
                 timeLeft--;
               });
             }
               else{

                 timer.cancel();
             }
             });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
              timeLeft.text.size(35).make(),
              20.heightBox,
              MaterialButton(onPressed:_startCountDown,
              child: "Start".text.make(),)
           ],
         ),
       ),
    );
  }
}

