import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';
import 'blocks.dart';


class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
              10.heightBox,
              Align(

                 alignment: Alignment.topCenter,
                  child: "Stories".text.size(24).make()),

              10.heightBox,

              Expanded(
                flex: 1,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 12,
                    itemBuilder: (contex,index){
                      return Round();
                    }),
              ),

              10.heightBox,
              Align(

                  alignment: Alignment.topCenter,
                  child: "Posts".text.size(24).make()),
              10.heightBox,

              Expanded(
                flex: 3,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 12,
                    itemBuilder: (contex,index){
                      return Squre();
                    }),
              ),

            ],

        ),
    );
  }
}
