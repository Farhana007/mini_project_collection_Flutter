import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';


class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Container().box.height(70).width(70).roundedFull.pink800.make(),

               Container().box.height(40).width(120).red600.rounded.make(),
               Container().box.height(100).width(100).roundedSM.pink600.make()
            ],
          ),
        ),
    );
  }
}
