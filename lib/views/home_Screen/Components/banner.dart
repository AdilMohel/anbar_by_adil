import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../consts/colors.dart';
import '../../../consts/images.dart';
import '../../../consts/strings.dart';
import '../../../consts/styles.dart';

Widget banner() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3), // Shadow color with some transparency
              spreadRadius: 0,   // Extent of the shadow spread; can be set to 0
              blurRadius: 5,    // Blur radius; adjust for more or less blur effect
              offset: Offset(0, 4), // Position of shadow; adjust x,y to change the shadow direction
            ),
          ],
        ),
        child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          hvac,
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 16,
                            fontFamily: semibold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          services,
                          style: TextStyle(
                            color: blackColor,
                            fontSize: 16,
                            fontFamily: semibold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      hvacServices,
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 10,
                        fontFamily: regular,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(onPressed: (){},
                      child: Text(
                        ordernow,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 10,
                          fontFamily: semibold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(65),
                  ),
                  child: Image.asset(imgHvac, width: 65, height: 65,fit: BoxFit.cover,),
                ),
              ),

            ]
        )
    ),
  );
}