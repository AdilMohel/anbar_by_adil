import 'package:untitled15/consts/consts.dart';
import 'package:untitled15/views/profile/profile_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widget_common/our_button.dart';
import '../home_Screen/home_Screen.dart';
import 'components/locatio_bg_widget.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return locationBgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(8),
            child:  Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                    child: Icon(Icons.arrow_back, color: primaryColor,),),
                const SizedBox(height: 12),

                Align(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    yourLocation,
                    style: TextStyle(
                        color: Color(0xff1E9B93),
                        fontSize: 35,
                        fontFamily: bold)
                  ),
                ),
                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    byAllowingLocationDetails,
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                        fontFamily: regular),
                  ),
                ),
                const Spacer(),

                SizedBox(
                  height: 62,
                  width: double.infinity,
                    child: ourButton(onPress: () {
                      Get.to(() =>  ProfileScreen());

                    },
                        color: primaryColor,
                        textColor: Colors.white,
                        title: shareCurrentLocation)),
                const SizedBox(height: 12),
                GestureDetector(
                  onTap: () {
                    Get.to(() =>  HomeScreen());
                  },
                  child: const Text(
                    enterLocationManually,
                    style: TextStyle(
                        color: whiteColor,
                        fontSize: 15,
                        fontFamily: bold),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
