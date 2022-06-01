import 'package:flutter/material.dart';

class LoginEmail extends StatefulWidget {
  const LoginEmail({Key? key}) : super(key: key);

  @override
  State<LoginEmail> createState() => _LoginEmailState();
}

class _LoginEmailState extends State<LoginEmail> {
  Widget textField({label}) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        decoration: InputDecoration(
          label: Text("$label"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
      ),
    );
  }

  Widget btn({child, onPressed, color}) {
    return Container(
      width: 300,
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
              textField(label: "password"),
              btn(
                child: Text("Login"),
                onPressed: _login,
                color: Colors.blue
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