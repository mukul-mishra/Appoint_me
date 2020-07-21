import 'package:flutter/material.dart';
import 'welcomeScreen.dart';

void main() => runApp(AppointMe());

class AppointMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(), //initialRoute:
      // routes:{

      // },
    );
  }
}
