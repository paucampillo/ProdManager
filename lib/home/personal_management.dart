import 'package:flutter/material.dart';

class PersonalManagement extends StatelessWidget {
  const PersonalManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 8, 10, 0),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 45),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Gestió Personal',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/f04f50ab89823e707b2a994f50ad0e615010a580b271d8a159cd7b8bee59d0cd?placeholderIfAbsent=true&apiKey=78bb60a9af11494fa2c2825e636bb6ea',
                        width: 48,
                        height: 48,
                      ),
                      const SizedBox(width: 9),
                      const Text(
                        'Sol·licitar\nvacances',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/dcb04e9d531c13bd72830ad6f3fef74f160837efa6496e18f1a3fc4eaede7443?placeholderIfAbsent=true&apiKey=78bb60a9af11494fa2c2825e636bb6ea',
                        width: 48,
                        height: 48,
                      ),
                      const SizedBox(width: 6),
                      const Text(
                        'Sol·licitar\nabsència',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}