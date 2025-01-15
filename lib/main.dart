import 'package:dumbproj/pages/home_page.dart';
import 'package:dumbproj/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:dumbproj/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromRGBO(140, 92, 179, 1)),
        home: HomePage(),
        routes: {
          '/loginpage': (context) => const SignupPage(),
          '/signupage': (context) => const LoginPage(),
          '/homepage': (context) => const HomePage()
        });
  }
}
