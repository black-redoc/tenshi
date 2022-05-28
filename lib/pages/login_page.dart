import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget btn({child, onPressed, color}) {
    return Container(
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
                borderRadius: BorderRadius.circular(50),
              )
            )
          ),
        ),
      ),
    );
  }

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
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 8),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textField(label: "email"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        child: Text("Login"),
                        onPressed: () {
                          print("Login btn");
                        },
                      )
                    ],
                  )
                ]
              ),
              Column(
                children: <Widget>[
                  btn(
                    child: Icon(Icons.g_mobiledata_outlined),
                    onPressed: () {
                      print("SignUp google");
                    },
                    color: Colors.red
                  ),
                  btn(
                    child: Icon(Icons.facebook),
                    onPressed: () {
                      print("SignUp facebook");
                    },
                    color: Colors.indigo
                  ),
                  btn(
                    child: Icon(Icons.apple),
                    onPressed: () {
                      print("SignUp apple");
                    },
                    color: Colors.black
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}