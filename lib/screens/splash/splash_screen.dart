
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {


    //goes to new page
    Future.delayed(Duration(seconds: 10), () async {

      Get.toNamed('/dashboard');

    });


    return Scaffold(
      
      body: Center(
        child: Lottie.asset('assets/spaceship.json'),
      ),
    );
  }
}
