import 'dart:convert' show json;

import 'package:flutter/services.dart' show rootBundle;

class VariablesRepository {

  Future<Map<String, dynamic>> getVariables() async {
    final data = await rootBundle.loadString("assets/variables.json");
    return json.decode(data);
  }
}