import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class Squre extends StatelessWidget {
  const Squre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        child: Center(child: "Post 1 ".text.size(22).center.white.align(TextAlign.center).make()),
      ).box.height(200).rounded .color(Colors.deepPurple).margin(EdgeInsets.all(12)).make(),
    );;
  }
}


class Round extends StatelessWidget {
  const Round({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Center(child: "Story ".text.size(18).center.white.align(TextAlign.center).make()),
    ).box.roundedFull.margin(EdgeInsets.only(left: 8)).height(100).color(Colors.pinkAccent).width(100).make();;
  }
}


class GridBox extends StatelessWidget {
  const GridBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
         borderRadius: BorderRadius.circular(12),
        child: Container(
           height: 80,
            width: 50,
           color: Colors.pinkAccent,
        ),
      ),
    );
  }
}
