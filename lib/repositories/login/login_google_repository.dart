import 'dart:convert';
import 'dart:io';

// ignore: depend_on_referenced_packages
import "package:http/http.dart" show Response, post;
import 'package:tenshi/repositories/login/login_repository.dart';

class LoginUsernameRepository extends LoginRepository {
  final String? url;
  LoginUsernameRepository(this.url);

  @override
  Future signIn(Map<String, dynamic> args) async {
    final username = args["username"];
    final password = args["password"];

    final uri = Uri.parse("$url/authentication/login/");
    final Response res = await post(
      uri,
      headers: {
        "Content-Type": "Application/json"
      },
      body: json.encode({
        "username": "$username",
        "password": "$password"
      })
    );
    if (res.statusCode == 200 || res.statusCode == 400) {
      Map<String, dynamic> data = json.decode(res.body);
      return data;
    } else {
      // throw HttpException("Error status code ${res.statusCode}. ${res.body}");
    }
  }

  @override
  Future signUp(Map<String, dynamic> args) async {}
}
