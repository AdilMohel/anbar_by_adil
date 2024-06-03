import 'package:untitled15/consts/consts.dart';
import 'package:untitled15/views/Otp_Screen/phone.dart';
import 'package:untitled15/widget_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               const Center(
                 child: Padding(
                   padding: EdgeInsets.only(top: 100),
                   child: Text(
                    bestHelpingLb,
                    style: TextStyle(fontSize: 32, fontFamily: bold,),
                   ),
                 ),
               ),
              const Spacer(),
              Center(child: Image.asset(imgtechnician, width: 375, height: 326,)),
              SizedBox(height: 100,),
              SizedBox(
                width: double.infinity,
                height: 62,
                child: ourButton(
                    onPress: () {
                      Get.to(()=> const MyPhone());
                    },
                    color: primaryColor,
                    textColor: whiteColor,
                    title: getStartedLb),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),

    );
  }
}
