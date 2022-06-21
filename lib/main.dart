import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tenshi/providers/login/login_email_provider.dart';
import 'package:tenshi/router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget providers() {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginUsernameProvider>(
          create: (context) => LoginUsernameProvider()
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Tenshi",
        routes: Routes.router,
        initialRoute: "/login",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return providers();
  }
}