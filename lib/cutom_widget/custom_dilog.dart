import 'package:flutter/material.dart';

class SuccessDialog {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.green.shade100,
                    child: const Icon(
                      Icons.login,
                      size: 50,
                      color: Colors.green,
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    "Login Successful! 🎉",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    "Welcome back!\n\n"
                    "You have successfully logged into your account. "
                    "We're glad to see you again. "
                    "Get ready to explore your dashboard and continue your journey.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
