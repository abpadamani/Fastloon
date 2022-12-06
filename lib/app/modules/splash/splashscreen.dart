import 'dart:async';

import 'package:fastloon/app/modules/auth/authscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => AuthScreen())));

    return Scaffold(
      backgroundColor: Color(0xFFadc148),
      body: Column(
        children: [
          SizedBox(
            height: 250,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Image.asset(
              'assets/images/flogo.png',
              width: 300,
              height: 300,
            ),
          ),
          Text(
            'FastLoon',
            style: GoogleFonts.dmSans(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
