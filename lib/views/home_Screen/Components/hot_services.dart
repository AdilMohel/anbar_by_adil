import 'package:untitled15/consts/consts.dart';
import 'package:flutter/material.dart';

class Hotservices extends StatelessWidget {
  final String imagePath;
  final String label;
  final Color textColor;

  const Hotservices({
    Key? key,
    required this.imagePath,
    required this.label,
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
                height: 154,
                width: 139,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  imagePath,
                  height: 154,
                  width: 139,
                  fit: BoxFit.cover,
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
