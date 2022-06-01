import 'package:flutter/material.dart';

class Stepper1 extends StatelessWidget {
  const Stepper1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text("stepper1")
        ]
      )
    );
  }
}