import 'package:flutter/material.dart';
import 'login_form.dart';
import 'background_image.dart';

class ProdManagerLoginScreen extends StatelessWidget {
  const ProdManagerLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFE25656), // Color de fondo detrás de la imagen
          ),
          const BackgroundImage(), // Imagen de fondo
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.1,
                horizontal: MediaQuery.of(context).size.width * 0.1,
              ),
              child: const LoginForm(), // Formulario de login
            ),
          ),
        ],
      ),
    );
  }
}
