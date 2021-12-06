import 'package:catelog_app/screens/cart_screen.dart';
import 'package:catelog_app/screens/home_screen.dart';
import 'package:catelog_app/screens/login_screen.dart';
import 'package:catelog_app/utils/routes.dart';
import 'package:catelog_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        '/': (context) => LoginScreen(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginScreen(),
        MyRoutes.CartRoutes: (context) => CartScreen(),
      },
    );
  }
}
