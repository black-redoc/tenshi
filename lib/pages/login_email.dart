import 'package:flutter/material.dart';
import 'package:tenshi/widgets/floating_button.dart';
import 'package:tenshi/widgets/text_field.dart';
import 'package:tenshi/widgets/text_medium.dart';

class LoginEmail extends StatefulWidget {
  const LoginEmail({Key? key}) : super(key: key);

  @override
  State<LoginEmail> createState() => _LoginEmailState();
}

class _LoginEmailState extends State<LoginEmail> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Center(
                child: Image.asset(
                  "assets/login_image.png",
                  height: 200
                )
              ),
              const TextFieldWidget(label: "password"),
              FloatingButtonWidget(
                onPressed: _login,
                backgroundColor: Colors.blue,
                child: const TextMediumWidget("Login")
              )
            ]
          )
        )
      )
    );
  }

  void _login() {
    print("login");
    Navigator.of(context).pushNamed("/stepper1");
  }
}