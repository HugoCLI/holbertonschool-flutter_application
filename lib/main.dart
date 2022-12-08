import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://images.squarespace-cdn.com/content/v1/60bf70d860f31b4f60455443/7e02aa09-0395-4fa0-8639-67c3cb77f062/Holberton+School+Logo+white_fog.png',
              height: 100,
            ),
            const SizedBox(height: 16),
            TextButton(
              child: const Text(
                'Connect',
                style: TextStyle(color: Colors.white),
              ),
              buttonStyle: const ButtonStyle(
                backgroundColor: Color(0xFFEB0145),
              ),
              onPressed: () {
                // Action à effectuer lorsque le bouton est pressé
              },
            ),
          ],
        ),
      ),
    );
  }
}
