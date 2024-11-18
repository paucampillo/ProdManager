import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prod_manager/HOME/my_component.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: SvgPicture.asset(
                'assets/images/rectangle1.svg',
                semanticsLabel: 'rectangle1',
              ),
            ),
            const Positioned(
              top: 121,
              left: 38,
              child: SizedBox(
                width: 411.91,
                height: 591,
                child: Stack(
                  children: <Widget>[
                    // Add your ellipse or any other positioned widget here
                  ],
                ),
              ),
            ),
            Positioned(
              top: 157,
              left: 44,
              child: Container(
                width: 271,
                height: 487,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 9),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Stack(
                  children: <Widget>[
                    const Positioned(
                      top: 341,
                      left: 8,
                      child: Text(
                        '¿Contraseña olvidada?',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Inter',
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 288,
                      left: 7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Acción para el botón
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                            ),
                            child: const Text('Button'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MyComponent(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            child: const Text('Inicia Sessió'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}