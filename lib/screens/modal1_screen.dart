import 'dart:ui';

import 'package:flutter/material.dart';


// Modal 1 Screen
class Modal1Screen extends StatelessWidget {
  const Modal1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(
        builder: (context, constraints) {
      final screenWidth = constraints.maxWidth;
      final screenHeight = constraints.maxHeight;

      return Stack(
        children: [


          Positioned.fill(
            child: Image.asset('assets/images/home_screen.png', fit: BoxFit.fill),
          ),

          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),

          Positioned.fill(
            child: Image.asset('assets/images/modal1_screen.png', fit: BoxFit.contain),
          ),

          // Botón dentro del modal
          Positioned(
            top: screenHeight * 0,
            right: screenWidth * 0.05,
            width: screenWidth * 0.3,
            height: screenWidth * 0.1,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Container(
                color: Colors.transparent, // Cambiar a transparente después de probar
              ),
            ),
          ),

        ],
      );
    }

      ),
    );
  }
}