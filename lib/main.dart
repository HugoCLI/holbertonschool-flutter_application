import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'package:flutter/src/painting/box_decoration.dart';
import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget  {
  @override
  LoginPage createState() => LoginPage();
}


class LoginPage extends State<MyApp> {
  bool showNewWidget = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF121212),
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://images.squarespace-cdn.com/content/v1/60bf70d860f31b4f60455443/7e02aa09-0395-4fa0-8639-67c3cb77f062/Holberton+School+Logo+white_fog.png',
                height: 50,
              ),
              const SizedBox(height: 16),
              Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.2,
                  right: MediaQuery.of(context).size.width * 0.2,
                ),
                margin: EdgeInsets.only(top: 150.0),
                width: double.infinity,
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFEB0145), // Text Color
                    padding: EdgeInsets.all(22.0),
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
