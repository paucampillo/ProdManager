import 'package:flutter/material.dart';
import 'package:prod_manager/home/my_component.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(6, 36, 6, 68),
      child: Container(
        padding: const EdgeInsets.fromLTRB(7, 33, 7, 17),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 3,
              offset: const Offset(0, 9),
            ),
          ],
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'ProdManager',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Image.network(
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/708ca329309df2a2232b70df40d7e2760dce9b1241ab7f0ed74949f30c6c033d?placeholderIfAbsent=true&apiKey=78bb60a9af11494fa2c2825e636bb6ea',
                    width: 33,
                    height: 47,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              const SizedBox(height: 29),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Usuari',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onSaved: (value) => _username = value ?? '',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Si us plau, introduïu el vostre nom d\'usuari';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 19),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Contrasenya',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                obscureText: true,
                onSaved: (value) => _password = value ?? '',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Si us plau, introduïu la vostra contrasenya';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 29),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE25656),
                  minimumSize: const Size(double.infinity, 37),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // TODO: Implement login logic

                    Navigator.pushNamed(context, '/home');
                  }
                },
                child: const Text(
                  'Inicia Sessió',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                child: const Text(
                  'Contrasenya oblidada?',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  // TODO: Implement forgot password logic
                },
              ),
              const SizedBox(height: 48),
              Center(
                child: Image.network(
                  'https://cdn.builder.io/api/v1/image/assets/TEMP/4ac61922402455010674e242f857417f0fdff8add8083ecbd654104ec2133954?placeholderIfAbsent=true&apiKey=78bb60a9af11494fa2c2825e636bb6ea',
                  width: 64,
                  height: 64,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}