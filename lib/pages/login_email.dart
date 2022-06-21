import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tenshi/providers/login/login_email_provider.dart';
import 'package:tenshi/repositories/login/login_google_repository.dart';
import 'package:tenshi/repositories/variables_repository.dart';
import 'package:tenshi/widgets/floating_button.dart';
import 'package:tenshi/widgets/text_field.dart';
import 'package:tenshi/widgets/text_medium.dart';
import 'package:tenshi/widgets/text_small.dart';

class LoginEmail extends StatefulWidget {
  const LoginEmail({Key? key}) : super(key: key);

  @override
  State<LoginEmail> createState() => _LoginEmailState();
}

class _LoginEmailState extends State<LoginEmail> {
  LoginUsernameProvider? _loginUsernameProvider;
  TextEditingController? _passwordController;
  bool? _isLoading;
  @override
  void initState() {
    super.initState();
    _loginUsernameProvider = Provider.of<LoginUsernameProvider>(context, listen: false);
    _passwordController = TextEditingController();
    _isLoading = false;
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _viewChoser()
    );
  }

  Widget _viewChoser() {
    final Size size = MediaQuery.of(context).size;
    if (_isLoading ?? false){
      return Scaffold(
        body: Container(
          color: const Color.fromARGB(239, 206, 206, 206),
          width: size.width,
          height: size.height,
          child: const Center(
            child: CircularProgressIndicator(
              color: Colors.blue
            )
          )
        )
      );
    } else {
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
                TextFieldWidget(
                  label: "password",
                  textController: _passwordController,
                ),
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
  }

  void _login() async {
    setState(() => _isLoading = true);
    await Future.delayed(const Duration(seconds: 3));
    final variables = VariablesRepository();
    final baseUrl = (await variables.getVariables())["urls"]["server_url"];
    final bodyRequest = {
      "username": "${_loginUsernameProvider?.username}",
      "password": "${_passwordController?.text}"
    };
    final response = await LoginUsernameRepository(baseUrl).signIn(bodyRequest);
    if ('${response["detail"]}'.toLowerCase() != "success") {
      if (!mounted) return;
      ScaffoldMessenger
      .of(context)
      .showSnackBar(
        const SnackBar(
          content: TextSmallWidget("Credenciales incorrectas."),
          duration: Duration(seconds: 4)
        )
      );
      print(response);
      setState(() => _isLoading = false);
    } else {
      if (!mounted) return;
      Navigator.of(context).pushNamed("/dashboard");
    }
  }
}