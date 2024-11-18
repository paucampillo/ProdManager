import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 49),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/e8d7a2f0b90e98833690f1af9cca9a6e77ce572a68ea40383346733016caaceb?placeholderIfAbsent=true&apiKey=78bb60a9af11494fa2c2825e636bb6ea',
            width: 46,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 13),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hola Mateu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Operador de càmera',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}