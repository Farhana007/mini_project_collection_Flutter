import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'game_main_page.dart';
import 'package:get/get.dart';

class GameFristPage extends StatelessWidget {
  const GameFristPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRect(
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset('assets/gameimg/gameCover.png')),

              // ignore: avoid_unnecessary_containers
              GestureDetector(
                onTap: () {
                  Get.to(() => GameMainPage());
                },
                child: Container(
                  child: Center(
                      child: "Let's Play"
                          .text
                          .size(25)
                          .color(Color.fromARGB(255, 238, 228, 221))
                          .semiBold
                          .make()),
                )
                    .box
                    .height(60)
                    .width(MediaQuery.of(context).size.width * 0.7)
                    .rounded
                    .color(Color.fromARGB(255, 13, 162, 199))
                    .shadow
                    .make(),
              ),
              40.heightBox,
              "Developed by Farhana"
                  .text
                  .color(Color.fromARGB(255, 114, 108, 108))
                  .make()
            ]),
      ),
    );
  }
}
