import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo
          Positioned.fill(
            child: Image.asset(
              'assets/images/splash_screen.png',
              fit: BoxFit.fill,
            ),
          ),
          // Botón invisible
          Positioned(
            top: 0,
            right: 0,
            width: 1024,
            height: 600,
            child: GestureDetector(
              onTap: () {
                if (kDebugMode) {
                  print("click");
                }
                Navigator.pushNamed(context, '/login');
              },
              child: Container(
                color: Colors.transparent, // Botón invisible
              ),
            ),
          ),
        ],
      ),
    );
  }
}
