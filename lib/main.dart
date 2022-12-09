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


// ignore: use_key_in_widget_constructors
class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 75),
            const Text(
              "Check-in",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Remaining 3 minutes",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 250),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://lh3.googleusercontent.com/a/AEdFTp4Is-DC6XS_CXTG7yUFZFFSZ3L5xS6yIxusDYgnnw=s96-c-rg-br100",
              ),
              radius: 50,
            ),
            const SizedBox(height: 50),
            const Text(
              "Good morning",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Hugo Chilemme",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.2,
                  right: MediaQuery.of(context).size.width * 0.2,
                ),
                margin: const EdgeInsets.only(top: 150.0),
                width: double.infinity,
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF121212), // Text Color
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
                  icon: const Icon(
                    Icons.call_merge,
                    size: 20.0,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Please check your attendance',
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


