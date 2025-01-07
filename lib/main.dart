import 'package:flutter/material.dart';
import '../screens/splash_screen.dart';
import '../screens/login_screen.dart';
import '../screens/home_screen.dart';
import '../screens/modal1_screen.dart';
import '../screens/modal2_screen.dart';
import '../screens/modal3_screen.dart';
import '../screens/info1_screen.dart';
import '../screens/info2_screen.dart';
import '../screens/info3_screen.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/modal1': (context) => Modal1Screen(),
        '/modal2': (context) => Modal2Screen(),
        '/modal3': (context) => Modal3Screen(),
        '/info1': (context) => Info1Screen(),
        '/info2': (context) => Info2Screen(),
        '/info3': (context) => Info3Screen(),
      },
    );
  }
}
