// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {


  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontFamily: 'Outfit',
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      home: const MyApp(),
    ),
  );
}

class GoogleUserAvatar extends StatelessWidget {
  final String? photoUrl;
  final double width;

  const GoogleUserAvatar({super.key, 
    this.photoUrl,
    this.width = 50,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(photoUrl!),
      radius: width / 2,
    );
  }
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
                padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height * 0.1),
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
                width: double.infinity,
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFEB0145), // Text Color
                    padding: const EdgeInsets.all(22.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DashboardPage(),
                      ),
                    );
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


// ignore: use_key_in_widget_constructors, must_be_immutable
class DashboardPage extends StatelessWidget {
  static const String eventname = "Check-in";

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment:  MainAxisAlignment.center,
              children: [
                const GoogleUserAvatar(
                  photoUrl: "https://lh3.googleusercontent.com/a/AEdFTp4Is-DC6XS_CXTG7yUFZFFSZ3L5xS6yIxusDYgnnw=s96-c-rg-br100",
                  width: 100,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height * 0.1) + const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      const Text("Welcome back"),
                      const Text(
                        "Hugo Chilemme",
                        style: TextStyle(
                            fontSize: 25.0,
                            height: 2,
                            fontWeight: FontWeight.w800 
                        ),
                      ),
                      Container(

                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.1),
                        width: double.infinity,
                        child: TextButton.icon(
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xFFEB0145), // Text Color
                            padding: const EdgeInsets.all(22.0),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  const AttendancePage(event: eventname),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.access_time,
                            size: 20.0,
                            color: Colors.white,
                          ),
                          label: const Text(
                            "Please check your $eventname",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )

          ],
        )
      )
    );
  }
}


// ignore: use_key_in_widget_constructors, must_be_immutable
class AttendancePage extends StatelessWidget {
  final String event;
  const AttendancePage({super.key, required this.event});

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text(
              "Are you face-to-face or remote ?",
              style: TextStyle(
                fontSize: 25.0,
                height: 2,
                fontWeight: FontWeight.w600 
              ),
            ),
            Container(

              margin: const EdgeInsets.only(top: 50.0),
              width: double.infinity,
              child:  TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFEB0145), // Text Color
                    padding: const EdgeInsets.all(22.0),
                  ),
                  onPressed: () {
                    // ignore: avoid_print
                    print("face-to-face");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DashboardPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "I'am in face to face",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
            ),
            Container(

              margin: const EdgeInsets.only(top: 20.0),
              width: double.infinity,
              child:  TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFEEEEEE), // Text Color
                    padding: const EdgeInsets.all(22.0),
                  ),
                  onPressed: () {
                    // ignore: avoid_print
                    print("remote");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DashboardPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "I'am in remote",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
            ),
          ],
        )
      )
    );
  }
}