import 'package:untitled15/consts/consts.dart';
import 'package:flutter/material.dart';

class HotProducts extends StatelessWidget {
  final String imagePath;
  final Color primaryColor;
  final String label;
  final Color textColor;

  const HotProducts({
    Key? key,
    required this.imagePath,
    required this.label,
    this.primaryColor = lightprimary, // Default primary color
    this.textColor = blackColor, // Default text color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 154,
                width: 139,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: lightprimary,
                ),

                child: Image.asset(
                  imagePath,
                  height: 93,
                  width: 74,
                  fit: BoxFit.none,
                ),
              ),
              SizedBox(height: 5),
              Text(
                label,
                style: TextStyle(
                  color: textColor,
                  fontSize: 14,
                  fontFamily: semibold, // Adjust the font family as needed
                ),
              ),
            ],
          ),
          SizedBox(width: 5),
        ],
      ),
    );
  }
}
