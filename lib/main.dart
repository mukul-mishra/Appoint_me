import 'package:demo/dashboard.dart';
import 'package:flutter/material.dart';
import 'welcomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(AppointMe());

class AppointMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamBuilder(
          stream: FirebaseAuth.instance.onAuthStateChanged,
          builder: (ctx, userSnapShot) {
            if (userSnapShot.hasData) {
              return DashboardScreen();
            }
            return WelcomeScreen();
          }), //initialRoute:
      // routes:{

      // },
    );
  }
}
