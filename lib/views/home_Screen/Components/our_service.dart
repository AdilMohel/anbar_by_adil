import 'package:untitled15/consts/consts.dart';
import 'package:flutter/material.dart';

class IconLabelButton extends StatelessWidget {
  final String imagePath;
  final String label;
  final Color primaryColor;
  final Color textColor;

  const IconLabelButton({
    Key? key,
    required this.imagePath,
    required this.label,
    this.primaryColor = Colors.blue, // Default primary color
    this.textColor = Colors.black, // Default text color
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
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  imagePath,
                  height: 50,
                  width: 50,
                  fit: BoxFit.none,
                ),
              ),
              SizedBox(height: 5),
              Text(
                label,
                style: TextStyle(
                  color: textColor,
                  fontSize: 13,
                  fontFamily: mediam, // Adjust the font family as needed
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
