import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

class PeoplePage extends StatefulWidget {
  const PeoplePage({Key? key}) : super(key: key);

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
          color: Colors.yellowAccent,
       ),
    );
  }
}
