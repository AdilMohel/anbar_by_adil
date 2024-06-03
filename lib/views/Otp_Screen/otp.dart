import 'dart:developer';

import 'package:untitled15/consts/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

import '../../consts/images.dart';
import '../home_Screen/Components/privacy_policy.dart';
import '../location_screen/location_screen.dart';
import 'components/resend_button.dart';

class MyOTP extends StatefulWidget {
  String verificationid = '';
    MyOTP({super.key, required this.verificationid});

  @override
  State<MyOTP> createState() => _MyOTPState();
}

class _MyOTPState extends State<MyOTP> {
  final  _pinPutController = TextEditingController();
  Color buttonColor = lowColor;
  Color textColor = whiteColor;// Initial color of the button

  @override
  void initState() {
    super.initState();
    _pinPutController.addListener(_onPinChanged);
  }

  @override
  void dispose() {
    _pinPutController.removeListener(_onPinChanged);
    _pinPutController.dispose();
    super.dispose();
  }

  void _onPinChanged() {
    setState(() {
      if (_pinPutController.text.length == 6) {
        // Change button color when pin is filled
        buttonColor = primaryColor;
        textColor = Colors.white;// Change to desired color
      } else {
        // Reset button color if pin is not filled
        buttonColor = lowColor;
        textColor = whiteColor;// Reset to initial color
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 34,
      height: 36,
      textStyle: GoogleFonts.manrope(
        fontSize: 18,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Image.asset(
                      imgAnbarTitleCl,
                      height: 52,
                      width: 234,
                    ),
                  ),
                  SizedBox(height: 20),

                 Padding(
                   padding: const EdgeInsets.only(top: 20,left: 20),
                   child: Align(
                     alignment: Alignment.centerLeft,
                     child: Image.asset(
                       imgVerify,
                       height: 80,
                       width: 84,
                     ),
                   ),
                 ),
                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        verifyOtp,
                        style: TextStyle(
                          fontSize: 32,
                          fontFamily: bold,
                          color: blackColor,
                        ),


                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        codeSent,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0XFF2D3D50)
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: SizedBox(
                      child: Pinput(
                        controller: _pinPutController,
                        length: 6,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        defaultPinTheme: PinTheme(
                          height: 54,
                          width: 56,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black.withOpacity(0.5),
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        preFilledWidget: Text(
                          '',
                          style: TextStyle(
                            color: blackColor,
                            fontFamily: semibold,
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: SizedBox(
                      height: 62,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                         try{
                            PhoneAuthCredential credential  = await
                                PhoneAuthProvider.credential(
                                    verificationId: widget.verificationid,
                                    smsCode: _pinPutController.text.toString());
                            await FirebaseAuth.instance.signInWithCredential(credential).then((value){
                              Get.off(() => LocationScreen());
                            });
                          }
                         catch(ex){
                         log(ex.toString());

                         }
                        },
                        child: Text(
                          continueC,
                          style: TextStyle(
                            fontFamily: bold,
                            fontSize: 18,
                            color: whiteColor,
                          )
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ResendButton(),
                  Spacer(),
                  Privacy_policy(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

