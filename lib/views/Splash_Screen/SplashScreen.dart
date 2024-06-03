import 'package:untitled15/consts/colors.dart';
import 'package:untitled15/consts/consts.dart';
import 'package:untitled15/views/Landing_Screen/Landing_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(()=> const LandingScreen());
    });
  }
  initState() {
    changeScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: Image.asset(imaganbarlogo, width: 150, height: 130, fit: BoxFit.cover,)),
            SizedBox(height: 10,),
            Image.asset(imgLogo2)
          ],
        ),
      ),
    );
  }
}
