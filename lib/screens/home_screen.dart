import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;
          final screenHeight = constraints.maxHeight;

          return Stack(
            children: [
              // Fondo
              Positioned.fill(
                child: Image.asset(
                  'assets/images/home_screen.png',
                  fit: BoxFit.fill,
                ),
              ),

              // Botón ADD (posicionado al 60% del ancho y 90% de la altura)
              Positioned(
                top: screenHeight * 0.9,
                left: screenWidth * 0.47,
                width: screenWidth * 0.07, // 10% del ancho de la pantalla
                height: screenWidth * 0.1, // 10% del ancho de la pantalla

                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/modal1');
                    },
                    child: Container(
                      color: Colors.transparent, // Cambiar a transparente después de probar
                    ),
                  ),
                ),


              // Botón INFO (posicionado al 40% del ancho y 90% de la altura)
              Positioned(
                top: screenHeight * 0.9,
                left: screenWidth * 0.3,
                width: screenWidth * 0.07, // 10% del ancho de la pantalla
                height: screenWidth * 0.1, // 10% del ancho de la pantalla
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/info1');
                  },
                  child: Container(
                    color: Colors.transparent, // Cambiar a transparente después de probar
                  ),
                ),
              ),

              // Botón Project
              Positioned(
                top: screenHeight * 0.2,
                left: screenWidth * 0.7,
                width: screenWidth * 0.5, // 10% del ancho de la pantalla
                height: screenWidth * 0.1, // 10% del ancho de la pantalla
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/modal2');
                  },
                  child: Container(
                    color: Colors.transparent, // Cambiar a transparente después de probar
                  ),
                ),
              ),


            ],
          );
        },
      ),
    );
  }
}
