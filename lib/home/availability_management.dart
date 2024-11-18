import 'package:flutter/material.dart';

class AvailabilityManagement extends StatelessWidget {
  const AvailabilityManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 17, 10, 0),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 56,
            decoration: BoxDecoration(
              color: const Color(0xFFF3BBBB),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(width: 7),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Gestionar disponibilitat',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Actualment fora de torn',
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}