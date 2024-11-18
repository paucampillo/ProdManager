import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.network(
        'https://cdn.builder.io/api/v1/image/assets/TEMP/89c29e732977a37a0c1da6183cddf7727042adf25519161120f4c2ef1f1d5304?placeholderIfAbsent=true&apiKey=78bb60a9af11494fa2c2825e636bb6ea',
        fit: BoxFit.cover,
      ),
    );
  }
}