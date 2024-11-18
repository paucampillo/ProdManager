import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Navegar a la pantalla de login después de 1 segundo
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/');
    });

    return Scaffold(
      body: Stack(
        children: [
          // Imagen de fondo
          SizedBox.expand(
            child: Image.asset(
              'images/splashscreen.png', // Ruta de la imagen
              fit: BoxFit.cover, // La imagen cubre toda la pantalla
            ),
          ),

        ],
      ),
    );
  }
}
