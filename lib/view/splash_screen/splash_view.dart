import 'package:ai_chat_app/core/const/app_icons.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 156, 170, 211),
              Color.fromARGB(255, 51, 57, 75),
            ],
          ),
        ),
        child: Image.asset(AppIcons().splash_icon),
      ),
    );
  }
}
