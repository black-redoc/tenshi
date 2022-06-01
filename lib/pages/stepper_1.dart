import 'package:flutter/material.dart';

class Stepper1 extends StatelessWidget {
  const Stepper1({Key? key}) : super(key: key);

  Widget btn({child, onPressed, color, width}) {
    return Container(
      width: width,
      margin: EdgeInsets.symmetric(vertical: 2.5, horizontal: 10),
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: double.infinity, minHeight: 40),
        child: ElevatedButton(
          child: child,
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              color
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )
            )
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset("assets/cat1.png"),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Tensi app te permite registrar varios gatitos para sus revisiones.",
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              btn(
                child: Icon(Icons.arrow_forward_ios_outlined),
                onPressed: () {},
                color: Colors.blue,
                width: 100.0
              )
            ],
          )
        ]
      )
    );
  }
}