import 'package:flutter/material.dart' show BuildContext, WidgetBuilder;
import 'package:tenshi/pages/appointment_page.dart';
import 'package:tenshi/pages/dashboard.dart';
import 'package:tenshi/pages/login_email.dart';
import 'package:tenshi/pages/login_page.dart';
import 'package:tenshi/pages/stepper_1.dart';
import 'package:tenshi/pages/stepper_2.dart';

class Routes {
  static final Map<String, WidgetBuilder> _myRoutes = {
    "/": (BuildContext context) => const LoginPage(),
    "/loginEmail": (BuildContext context) => const LoginEmail(),
    "/stepper1": (BuildContext context) => const Stepper1(),
    "/stepper2": (BuildContext context) => const Stepper2(),
    "/dashboard": (BuildContext context) => const Dashboard(),
    "/appointment": (BuildContext context) => const AppointmentPage()
  };

  static Map<String, WidgetBuilder> get router => _myRoutes;
}