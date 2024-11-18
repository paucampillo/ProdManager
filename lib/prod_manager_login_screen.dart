import 'package:flutter/material.dart';
import 'login_form.dart';
import 'background_image.dart';

class ProdManagerLoginScreen extends StatelessWidget {
  const ProdManagerLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 450),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 360,
                padding: const EdgeInsets.symmetric(vertical: 105, horizontal: 38),
                color: const Color(0xFFE25656),
                child: const Stack(
                  children: [
                    BackgroundImage(),
                    LoginForm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}