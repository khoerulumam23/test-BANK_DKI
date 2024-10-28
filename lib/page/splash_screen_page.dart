import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jak_one_pay/page/login_page.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const LoginPage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFF4747),
              Color(0xFFFC9842),
            ],
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                'assets/images/Logo Jakarta Tourist Pass OK_Putih 1.png',
              ),
            ),
            Positioned(
                bottom: 30,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/Group 1563.png',
                    ),
                    const Text("powered by Bank DKI \n2023",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
