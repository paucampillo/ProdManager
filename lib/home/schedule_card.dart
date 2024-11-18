import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.fromLTRB(5, 15, 5, 15),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 7,
                height: 96,
                decoration: const BoxDecoration(
                  color: Color(0xFF00A0D2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0x33D9D9D9),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  padding: const EdgeInsets.fromLTRB(20, 5, 5, 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '8:00 - 16:00',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Avui, 27 setembre',
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              color: const Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                Image.network(
                                  'https://cdn.builder.io/api/v1/image/assets/TEMP/24b05556a0aa08e840fbc4573a982372bca1bd4c7d4e0a9d25a5b855b7b9b5cc?placeholderIfAbsent=true&apiKey=78bb60a9af11494fa2c2825e636bb6ea',
                                  width: 20,
                                  height: 20,
                                ),
                                const SizedBox(width: 6),
                                const Text(
                                  '67890 - Plató Nou',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0x1F787880),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                Image.network(
                                  'https://cdn.builder.io/api/v1/image/assets/TEMP/d39211dbb0b1b8d712255b41cb8b37f9a81f3a61c63665af7fc78cd7cf1009f0?placeholderIfAbsent=true&apiKey=78bb60a9af11494fa2c2825e636bb6ea',
                                  width: 16,
                                  height: 20,
                                ),
                                const SizedBox(width: 7),
                                const Text(
                                  'CCCB - Palau',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFE25656),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 5),
              textStyle: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            child: const Text('Fitxar 8:00'),
          ),
        ],
      ),
    );
  }
}