// import 'package:untitled15/consts/colors.dart';
// import 'package:untitled15/consts/consts.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
// import '../../consts/images.dart';
// import 'otp.dart';
//
// class MyPhone extends StatefulWidget {
//   const MyPhone({Key? key}) : super(key: key);
//
//   @override
//   State<MyPhone> createState() => _MyPhoneState();
// }
//
// class _MyPhoneState extends State<MyPhone> {
//   // var maskFormatter = new MaskTextInputFormatter(
//   //     mask: '(###) ###-####', filter: {"#": RegExp(r'[0-9]'),
//   //
//   // });
//
//   TextEditingController phoneController = TextEditingController();
//
//   @override
//   void initState() {
//     super.initState();
//     phoneController.text = ' +92';
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       backgroundColor: whiteColor,
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 150),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   imgAnbarTitleCl,
//                   height: 52,
//                   width: 234,
//                 ),
//                 SizedBox(height: 40),
//
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 25),
//                   child: Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       enterMN,
//                       style: TextStyle(
//                         fontSize: 32,
//                         fontFamily: bold,
//                         color: blackColor,
//                       ),
//                     ),
//                   ),
//                 ),
//
//
//               ],
//             ),
//           ),
//           SizedBox(height: 16),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 25),
//             child: Container(
//               child: Row(
//                 children:[
//                   // SizedBox(width: 55,
//                   // child: TextField(
//                   //   controller: phoneController,
//                   //   decoration: InputDecoration(
//                   //     border: InputBorder.none,
//                   //   ),
//                   //   cursorColor: primaryColor,
//                   // ),
//                   // ),
//                   // SizedBox(width: 10),
//                   // Container(
//                   //   width: 1,
//                   //   height: 24,
//                   //   color: Colors.grey,
//                   // ),
//                   SizedBox(width: 20),
//                   Expanded(
//                     child: TextField(
//                       // inputFormatters: [maskFormatter],
//                       keyboardType: TextInputType.phone,
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                       ),
//                       cursorColor: primaryColor,
//                     ),
//                   ),
//
//                 ]
//               ),
//               decoration: BoxDecoration(
//                 color: whiteColor,
//                 borderRadius: BorderRadius.circular(16),
//                 border: Border.all(
//                   color: primaryColor,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 25),
//             child: SizedBox(
//               height: 62,
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () async{
//                   await FirebaseAuth.instance.verifyPhoneNumber(
//                     verificationCompleted: (PhoneAuthCredential credential) {},
//                     verificationFailed: (FirebaseAuthException ex) {},
//                     codeSent: (String verificationId,int? resendingToken) {
//                       Get.to(() => MyOTP(verificationid: verificationId,));
//                     },
//                     codeAutoRetrievalTimeout: (String verificationId) {},
//                     phoneNumber: phoneController.text.toString(),
//                   );
//                 },
//                 child: Text(
//                   getOTP,
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontFamily: bold,
//                     color: whiteColor,
//                   ),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: primaryColor,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Spacer(),
//
//     Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 25),
//       child: Column(
//         mainAxisAlignment:  MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           GestureDetector(
//             onTap: () {
//             },
//             child: Center(
//               child: Container(
//                 child: RichText(text:
//                 TextSpan(
//                 children: [
//                 TextSpan(
//                 text: byClicking,
//                   style: TextStyle(
//                     color: blackColor,
//                     fontSize: 16,
//                     fontFamily: semibold,
//                   ),
//                 ),
//                 TextSpan(
//                   text: termsOfService,
//                   style: TextStyle(
//                     color: blackColor,
//                     fontSize: 16,
//                     fontFamily: bold,
//                     decoration: TextDecoration.underline,
//                   ),
//                   ),
//                   TextSpan(
//                     text: and,
//                     style: TextStyle(
//                       color: blackColor,
//                       fontSize: 16,
//                       fontFamily: semibold,
//                     ),
//                   ),
//                     ],
//
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: RichText(text: TextSpan(
//                   text: privacyPolicy,
//                   style: TextStyle(
//                     color: blackColor,
//                     fontSize: 16,
//                     fontFamily: bold,
//                     decoration: TextDecoration.underline,
//                   ),
//                 )
//             ),
//           ),
//         ],
//       ),
//     ),
//         ],
//       ),
//     );
//   }
// }
//
import 'package:untitled15/consts/colors.dart';
import 'package:untitled15/consts/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../consts/images.dart';
import '../home_Screen/Components/privacy_policy.dart';
import 'otp.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({Key? key}) : super(key: key);

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController phoneController = TextEditingController();
  var maskFormatter = MaskTextInputFormatter(
    mask: '+92##########', // Adjust the mask as per the required digits after the country code
    filter: {"#": RegExp(r'[0-9]')},
  );

  @override
  void initState() {
    super.initState();
    phoneController.text = '+92'; // Correctly formatted initial text
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imgAnbarTitleCl,
                  height: 52,
                  width: 234,
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 25),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      enterMN,
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: bold,
                        color: blackColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 25),
            child: Container(
              height: 62,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: primaryColor,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: phoneController,
                  inputFormatters: [maskFormatter],
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 20, bottom: 14),
                  ),
                  cursorColor: primaryColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              height: 62,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: phoneController.text,
                    verificationCompleted: (PhoneAuthCredential credential) {},
                    verificationFailed: (FirebaseAuthException ex) {
                      print('Firebase Auth Exception: ${ex.message}');
                    },
                    codeSent: (String verificationId, int? resendingToken) {
                      Get.to(() => MyOTP(verificationid: verificationId));
                    },
                    codeAutoRetrievalTimeout: (String verificationId) {},
                  );
                },
                child: Text(
                  getOTP,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: bold,
                    color: whiteColor,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          Privacy_policy(),
        ],
      ),
    );
  }
}
