import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../consts/colors.dart';
import '../../../consts/images.dart';
import '../../../consts/strings.dart';
import '../../../consts/styles.dart';

class annual_contract extends StatelessWidget {
  const annual_contract({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Container(
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
            color: lowColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  annualContract,
                  style: TextStyle(
                    color: blackColor,
                    fontSize: 32,
                    fontFamily: bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(onPressed: (){},
                      child: Row(
                        children: [
                          Text(
                            ordernow,
                            style: TextStyle(
                              color: lowColor,
                              fontSize: 14,
                              fontFamily: semibold,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.arrow_forward_ios, color: lowColor, size: 16, weight: 50,
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Image.asset(imgPoster1, height: 88,width: 111,),

                ],
              ),


            ],

          ),
        )


    );
  }
}
