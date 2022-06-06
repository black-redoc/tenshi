import 'package:flutter/material.dart';
import 'package:tenshi/widgets/floating_button.dart';
import 'package:tenshi/widgets/text_field.dart';
import 'package:tenshi/widgets/text_medium.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 8),
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
                  const TextFieldWidget(label: "email"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: _loginEmail,
                        child: const TextMediumWidget("Login"),
                      )
                    ],
                  )
                ]
              ),
              Column(
                children: <Widget>[
                  FloatingButtonWidget(
                    onPressed: _loginGoogle,
                    backgroundColor: Colors.red,
                    child: const Icon(Icons.g_mobiledata_outlined)
                  ),
                  FloatingButtonWidget(
                    onPressed: _loginFacebook,
                    backgroundColor: Colors.indigo,
                    child: const Icon(Icons.facebook)
                  ),
                  FloatingButtonWidget(
                    onPressed: _loginAppleid,
                    backgroundColor: Colors.black,
                    child: const Icon(Icons.apple),
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }

  void _loginGoogle() {
    print("google_login");
  }
  void _loginFacebook() {
    print("facebook_login");
  }
  void _loginAppleid() {
    print("apple_login");
  }

  void _loginEmail() {
    print("login email");
    Navigator.of(context).pushNamed("/loginEmail");
  }
}