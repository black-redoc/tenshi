import 'package:flutter/material.dart';
import 'package:tenshi/widgets/floating_button.dart';
import 'package:tenshi/widgets/text_medium.dart';

class Stepper1 extends StatelessWidget {
  const Stepper1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset("assets/cat1.png"),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextMediumWidget(
              "Tenshi app te permite registrar varios gatitos para sus revisiones.",
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FloatingButtonWidget(
                onPressed: () => _actionNext(context),
                backgroundColor: Colors.blue,
                width: 100.0,
                child: const Icon(Icons.arrow_forward_ios_outlined)
              )
            ],
          )
        ]
      )
    );
  }

  void _actionNext(BuildContext context) {
    Navigator.of(context).pushNamed("/stepper2");
  }
}