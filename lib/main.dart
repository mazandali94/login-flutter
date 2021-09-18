import 'package:flutter/material.dart';

import 'screens/login_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext e) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(
        screenTitle: "Login",
      ),
    );
  }
}
