import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';
import 'game_main_page.dart';

class GameFinal extends StatefulWidget {
  final int finalPoint;

  GameFinal({required this.finalPoint});

  @override
  State<GameFinal> createState() => _GameFinalState();
}

class _GameFinalState extends State<GameFinal> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Disable back navigation by returning false
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRect(
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset('assets/gameimg/gameFinal.png')),
                "You Have Finished In "
                    .text
                    .size(25)
                    .color(Color.fromARGB(255, 12, 8, 132))
                    .make(),
                "${widget.finalPoint} Moves"
                    .text
                    .size(35)
                    .color(Color.fromARGB(255, 155, 9, 80))
                    .make(),
                30.heightBox,
                GestureDetector(
                  onTap: () {
                    Get.to(() => GameMainPage());
                  },
                  child: Center(
                    child: "Play Again"
                        .text
                        .black
                        .size(20)
                        .semiBold
                        .color(Color.fromARGB(255, 25, 80, 162))
                        .make(),
                  ).box.height(50).width(200).white.shadow2xl.rounded.make(),
                )
              ]),
        ),
      ),
    );
  }
}
