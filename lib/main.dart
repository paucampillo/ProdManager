import 'package:flutter/material.dart';
import 'package:prod_manager/HOME/my_component.dart';
import 'package:prod_manager/splash_screen.dart';
import 'login_widget.dart';
import 'prod_manager_login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/': (context) => const ProdManagerLoginScreen(),
        '/home': (context) => const MyComponent(),

      },
    );
  }
}
