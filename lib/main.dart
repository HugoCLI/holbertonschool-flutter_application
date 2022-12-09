import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/painting.dart';

void main() {


  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontFamily: 'AktivGrotesk',
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      home: const MyApp(),
    ),
  );
}



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
    ImageProvider holbertonwhite = const AssetImage(
      'holberton_school_logo.png',
    );
    return Scaffold(
        backgroundColor: const Color(0xFF121212),
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: holbertonwhite,
                width: 300

              ),
              const SizedBox(height: 16),
              Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.2,
                  right: MediaQuery.of(context).size.width * 0.2,
                ),
                margin: const EdgeInsets.only(top: 150.0),
                width: double.infinity,
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFEB0145), // Text Color
                    padding: const EdgeInsets.all(22.0),
                  ),
                  onPressed: () {
                    // Action à effectuer lorsque le bouton est pressé
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.google,
                    size: 15.0,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Connect',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
