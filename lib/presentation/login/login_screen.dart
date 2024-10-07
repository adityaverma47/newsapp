import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 80,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/tv_news.png"))
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
