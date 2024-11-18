import 'package:flutter/material.dart';
import 'package:prod_manager/HOME/header.dart';
import 'package:prod_manager/HOME/schedule_card.dart';
import 'package:prod_manager/HOME/personal_management.dart';
import 'package:prod_manager/HOME/availability_management.dart';

class MyComponent extends StatelessWidget {
  const MyComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 360),
      child: Column(
        children: [
          Container(
            color: const Color(0xFFE25656),
            child: Column(
              children: [
                const Header(),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFEDEDED),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(top: 28),
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    children: [
                      const ScheduleCard(),
                      const PersonalManagement(),
                      const AvailabilityManagement(),
                      Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/7fd4f374e7ea67e05b0e8f65131b6e9fc84e1405a632f46c23a669fa19906348?placeholderIfAbsent=true&apiKey=78bb60a9af11494fa2c2825e636bb6ea',
                        width: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}