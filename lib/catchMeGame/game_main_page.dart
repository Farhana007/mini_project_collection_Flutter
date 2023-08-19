import 'package:flutter/material.dart';
import 'dart:math';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

import 'game_final.dart';

class GameMainPage extends StatefulWidget {
  @override
  State<GameMainPage> createState() => _GameMainPageState();
}

class _GameMainPageState extends State<GameMainPage> {
  // list Of Number
  List numbers = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
  //Generate Random Number
  int randomNumber = Random().nextInt(9) + 1;
  //point count
  int point = 0;

  //colors consts

  var green = Color.fromARGB(255, 22, 219, 91);
  var white = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: " how many moves you need to catch the thief ?"
                      .text
                      .size(15)
                      .color(Color.fromARGB(255, 14, 88, 114))
                      .make(),
                ),
                Expanded(
                  child: Container(
                    child: Image.asset('assets/gameimg/gameMain.gif'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "Moves Count : ".text.black.semiBold.size(20).make(),
                    "$point"
                        .text
                        .size(30)
                        .color(Color.fromARGB(255, 32, 18, 114))
                        .make(),
                  ],
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            String value = numbers[index];
                            print('Value: $value');
                            print(randomNumber);

                            if (int.parse(value) == randomNumber) {
                              print('Success');

                              setState(() {
                                white = green;
                              });

                              Future.delayed(const Duration(seconds: 1), () {
                                Get.to(() => GameFinal(finalPoint: point));
                              });
                            } else {
                              VxToast.show(context, msg: 'Failed');
                            }

                            setState(() {
                              randomNumber = Random().nextInt(9) + 1;
                              point = point + 1;
                            });
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                numbers[index],
                              )
                                  .text
                                  .size(45)
                                  .color(Color.fromARGB(255, 91, 38, 235))
                                  .shadow(
                                    0,
                                    2,
                                    4,
                                    Color.fromARGB(255, 3, 99, 131),
                                  )
                                  .make(),
                            ),
                          )
                              .box
                              .height(20)
                              .width(20)
                              .color(white)
                              .rounded
                              .shadow
                              .make(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
