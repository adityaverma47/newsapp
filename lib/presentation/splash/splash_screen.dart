import 'dart:async';

import 'package:daily_news/presentation/homepage/homepage.dart';
import 'package:daily_news/presentation/login/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 380,
                width: 250,
                color: Colors.white,
                child: Center(
                  child: Image.asset(
                    "assets/images/splash_news.jpeg",
                    height: 150,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
