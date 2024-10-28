import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(height: 50),
        Row(
          children: [
            Image.asset(
              "assets/images/ind_logo.png",
            ),
            Image.asset(
              "assets/images/eng_logo.png",
            ),
            const Spacer(),
            Image.asset(
              "assets/images/jakcard.png",
            ),
          ],
        ),
        const SizedBox(height: 80),
        Center(
          child: Image.asset(
            "assets/images/monas.png",
          ),
        ),
        const Text(
          "Explore Jakarta with Jakarta Tourist Pass",
          style: TextStyle(color: Colors.black),
        )
      ],
    ));
  }
}
