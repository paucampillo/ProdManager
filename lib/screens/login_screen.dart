import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo
          Positioned.fill(
            child: Image.asset(
              'assets/images/login_screen.png',
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
                Navigator.pushNamed(context, '/home');
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
