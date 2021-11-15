import 'package:catelog_app/screens/home_screen.dart';
import 'package:catelog_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        '/': (context) => LoginScreen(),
        '/Login': (context) => LoginScreen(),
      },
    );
  }
}
