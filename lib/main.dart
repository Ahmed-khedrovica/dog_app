
import 'package:doghome/screens/home_screen.dart';
import 'package:doghome/screens/login_screen.dart';
import 'package:doghome/screens/register_screen.dart';
import 'package:doghome/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DogCare());
}

class DogCare extends StatelessWidget {
  const DogCare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes:
      {
        SplashScreen.id:(context)=>SplashScreen(),
        LoginPage.id:(context)=>LoginPage(),
        RegisterPage.id:(context)=>RegisterPage(),
        HomeScreen.id:(context)=>HomeScreen(),
      },

    );
  }
}