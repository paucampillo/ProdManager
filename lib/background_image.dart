import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Image.asset(
        'images/backgroundLOGIN.png', // Ruta correcta según pubspec.yaml
        fit: BoxFit.cover, // Ajusta la imagen para cubrir toda la pantalla
      ),
    );
  }
}
