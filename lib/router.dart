import 'package:flutter/material.dart' show BuildContext, WidgetBuilder;
import 'package:tenshi/pages/login_page.dart';

class Routes {
  static final Map<String, WidgetBuilder> _myRoutes = {
    "/": (BuildContext context) => LoginPage()
  };

  static Map<String, WidgetBuilder> get router => _myRoutes;
}