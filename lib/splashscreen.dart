import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rescue_ai/constant.dart';
import 'package:rescue_ai/homepage.dart';
import 'package:rescue_ai/loginview.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //splashcode
    Timer(const Duration(seconds: 2), () {
      Get.to(const HomePage());
    });
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Text(
          'Rescue Ai',
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: rGreen),
        ),
      ),
    );
  }
}
