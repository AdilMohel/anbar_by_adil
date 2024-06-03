import 'package:flutter/cupertino.dart';
import 'package:untitled15/consts/colors.dart';

import '../../../consts/strings.dart';
import '../../../consts/styles.dart';

class Privacy_policy extends StatelessWidget {
  const Privacy_policy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment:  MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
            },
            child: Center(
              child: Container(
                child: RichText(text:
                TextSpan(
                  children: [
                    TextSpan(
                      text: byClicking,
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 16,
                        fontFamily: semibold,
                      ),
                    ),
                    TextSpan(
                      text: termsOfService,
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 16,
                        fontFamily: bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: and,
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 16,
                        fontFamily: semibold,
                      ),
                    ),
                  ],

                ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(text: TextSpan(
              text: privacyPolicy,
              style: TextStyle(
                color: blackColor,
                fontSize: 16,
                fontFamily: bold,
                decoration: TextDecoration.underline,
              ),
            )
            ),
          ),
        ],
      ),
    );
  }
}
