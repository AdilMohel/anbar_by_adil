import 'package:get/get.dart';
import 'package:untitled15/views/home_Screen/Components/hot_Products.dart';
import 'package:untitled15/views/home_Screen/Components/hot_services.dart';
import 'package:untitled15/views/home_Screen/Components/our_service.dart';
import 'package:flutter/material.dart';

import '../../consts/colors.dart';
import '../../consts/images.dart';
import '../../consts/strings.dart';
import '../../consts/styles.dart';
import '../image/image.dart';
import 'Components/annual_contract_Card.dart';
import 'Components/banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 198,
              color: primaryColor,
              child: Stack(
                children: <Widget>[
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60,left: 20, right: 20, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(imgLogo2, width: 165, height: 45,),
                            SizedBox(width: 20),
                            IconButton(onPressed: (){
                              Get.to(ProfileScreenoo());
                            }, icon: Image.asset(imgmenu))
                            ,
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 51,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                // child: Image.asset(imgsearch, width: 20, height: 20,),
                                child: Icon(Icons.search, color: lightgrey, size: 24,),
                              ),
                              Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              search,
                              style: TextStyle(
                                  color: lightgrey,
                                  fontSize: 16,
                                  fontFamily: mediam),
                            ),
                          ),
                        ],
                          ),
                        ),
                      )
                    ],

                  )

                ],
              ),
            ),
            SizedBox(height: 20,),
            banner(),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  ourServices,
                  style: TextStyle(
                    color: blackColor,
                    fontSize: 20,
                    fontFamily: bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            const Row(
              children: [
                IconLabelButton(
                  imagePath: imgAC,
                  label: acRepair,
                  primaryColor: primaryColor, // Optional, specify if you want a different color
                  textColor: blackColor, // Optional, specify if you want a different text color
                ),

                IconLabelButton(
                  imagePath: imgPlumbing,
                  label: plumbing,
                  primaryColor: primaryColor, // Optional, specify if you want a different color
                  textColor: blackColor, // Optional, specify if you want a different text color
                ),
                IconLabelButton(
                  imagePath: imgElectrical,
                  label: electrician,
                  primaryColor: primaryColor, // Optional, specify if you want a different color
                  textColor: blackColor, // Optional, specify if you want a different text color
                ),
                IconLabelButton(
                  imagePath: imgAC,
                  label: '',
                  primaryColor: primaryColor, // Optional, specify if you want a different color
                  textColor: blackColor, // Optional, specify if you want a different text color
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 4,
                    decoration: BoxDecoration(
                      color: lightgrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    hotServices,
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 20,
                      fontFamily: bold,
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(onPressed: (){},
                    child: Row(
                      children: [
                        Text(
                          seeall,
                          style: TextStyle(
                            color: lightgrey,
                            fontSize: 16,
                            fontFamily: bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_forward_ios, color: lightgrey, size: 16, weight: 50,
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                        side: BorderSide(color: lightgrey, width: .5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Sets the scroll direction to horizontal
              child: Row(
                children: [
                  Hotservices(
                    imagePath: imgPoster1,
                    label: acCleaning,
                    textColor: blackColor, // Optional, specify if you want a different text color
                  ),
                  Hotservices(
                    imagePath: imgPoster1,
                    label: acInstallation,
                    textColor: blackColor, // Optional, specify if you want a different text color
                  ),
                  Hotservices(
                    imagePath: imgPoster3,
                    label: seeall,
                    textColor: blackColor, // Optional, specify if you want a different text color
                  ),
                  // Add more Hotservices widgets as needed
                ],
              ),
            ),
            SizedBox(height: 20),
            annual_contract(),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 4,
                    decoration: BoxDecoration(
                      color: lightgrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    hotProducts,
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 20,
                      fontFamily: bold,
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(onPressed: (){},
                    child: Row(
                      children: [
                        Text(
                          seeall,
                          style: TextStyle(
                            color: lightgrey,
                            fontSize: 16,
                            fontFamily: bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_forward_ios, color: lightgrey, size: 16, weight: 50,
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                        side: BorderSide(color: lightgrey, width: .5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Sets the scroll direction to horizontal
              child: Row(
                children: [
                  HotProducts(
                    imagePath: imgthermostat,
                    primaryColor: lowColor,
                    label: thermostat,
                    textColor: blackColor, // Optional, specify if you want a different text color
                  ),
                  HotProducts(
                    imagePath: imgcapacitor,
                    primaryColor: lowColor,
                    label: acKit,
                    textColor: blackColor, // Optional, specify if you want a different text color
                  ),
                  HotProducts(
                    imagePath: imgcapacitor,
                    primaryColor: lowColor,
                    label: capacitor,
                    textColor: blackColor,
                    // Optional, specify if you want a different text color
                  ),
                  // Add more Hotservices widgets as needed
                ],
              ),
            ),
            SizedBox(height: 20),


          ],


        ),
      ),
    );
  }
}

