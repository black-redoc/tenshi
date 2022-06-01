import 'package:flutter/material.dart' show BuildContext, WidgetBuilder;
import 'package:tenshi/pages/login_email.dart';
import 'package:tenshi/pages/login_page.dart';
import 'package:tenshi/pages/stepper_1.dart';

class Routes {
  static final Map<String, WidgetBuilder> _myRoutes = {
    "/": (BuildContext context) => const LoginPage(),
    "/loginEmail": (BuildContext context) => const LoginEmail(),
    "/stepper1": (BuildContext context) => const Stepper1()
  };

  static Map<String, WidgetBuilder> get router => _myRoutes;
}