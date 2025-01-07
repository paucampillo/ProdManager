import 'package:flutter/material.dart';

class Info1Screen extends StatelessWidget {
  const Info1Screen({super.key});

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
                  'assets/images/info1_screen.png',
                  fit: BoxFit.fill,
                ),
              ),

              // Botón ADD (posicionado al 60% del ancho y 90% de la altura)
              Positioned(
                top: screenHeight * 0,
                left: screenWidth * 0.25,
                width: screenWidth * 0.75, // 10% del ancho de la pantalla
                height: screenWidth * 1, // 10% del ancho de la pantalla

                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Container(
                    color: Colors.transparent, // Cambiar a transparente después de probar
                  ),
                ),
              ),

              Positioned(
                top: screenHeight * 0.445,
                left: screenWidth * 0.0,
                width: screenWidth * 0.25, // 10% del ancho de la pantalla
                height: screenWidth * 0.05, // 10% del ancho de la pantalla

                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/info2');
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
