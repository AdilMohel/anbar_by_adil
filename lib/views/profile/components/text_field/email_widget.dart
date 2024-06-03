import 'package:untitled15/consts/consts.dart';
import 'package:flutter/material.dart';

class EmailInputField extends StatelessWidget {
  final TextEditingController controller;
  final Color borderColor;
  final Color focusedBorderColor;

  const EmailInputField({
    Key? key,
    required this.controller,
    this.borderColor = greyColor,
    this.focusedBorderColor = blackColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: focusedBorderColor),

          ),
          errorStyle: TextStyle(color: Colors.redAccent),
          // Style for error text
        ),
        cursorColor: blackColor,

        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          }
          String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
          RegExp regex = RegExp(pattern);
          if (!regex.hasMatch(value)) {
            return 'Enter a valid email address';
          }
          return null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction, // Validate each time the user interacts with the field
      ),
    );
  }
}
