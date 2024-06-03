import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:untitled15/consts/colors.dart';
import 'package:untitled15/consts/strings.dart';

import '../../consts/styles.dart';
import '../profile/components/text_field/email_widget.dart';
import '../profile/components/text_field/gender.dart';
import '../profile/components/text_field/text_field_entry.dart';
import '../profile/components/text_field/text_field_number.dart';
import '../profile/components/text_field/text_name_field.dart';

class ProfileScreenoo extends StatefulWidget {
  @override
  _ProfileScreenooState createState() => _ProfileScreenooState();
}

class _ProfileScreenooState extends State<ProfileScreenoo> {
  bool isEditable = false; // Initial state of text fields being not editable
  String buttonText = 'Update';

  var maskFormatter = MaskTextInputFormatter(
      mask: '(###) ###-####',
      filter: {"#": RegExp(r'[0-9]')}
  );// Initial text of the button
  final TextEditingController emailController = TextEditingController();

  // Function to toggle the editability of the text fields and update the button text
  void _toggleEdit() {
    setState(() {
      isEditable = !isEditable; // Toggle the boolean state
      buttonText = isEditable ? 'Save' : 'Update'; // Update button text accordingly
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: <Widget>[
          Column(
          children: [
            Container(
              height: 190,
              color: primaryColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  profileTextField(firstName, bold, 14),
                  profileTextFieldEntry(greyColor, blackColor, isEditable),
                  const SizedBox(height: 20),
                  profileTextField(lastName, bold, 14),
                  profileTextFieldEntry(greyColor, blackColor, isEditable),
                  const SizedBox(height: 20),
                  profileTextField(email, bold, 14),
                  EmailInputField(controller: emailController,  isEditable: isEditable,), // Using the EmailInputField
                  const SizedBox(height: 20),
                  profileTextField(phoneNumber, bold, 14),
                  phoneTextFieldEntry(greyColor, blackColor, maskFormatter, isEditable),
                  const SizedBox(height: 20),
                  profileTextField(gender, bold, 14),
                  GenderDropdown(isEditable: isEditable,), // Ensure these functions support an editable flag


                  SizedBox(height: 20),


                  ElevatedButton(
                    onPressed: _toggleEdit, // Attach the toggle function to button press
                    child: Text(buttonText), // Display dynamic button text
                  ),
                ],
              ),
            ),
          ],
    ),
  ],
      ),

    );
  }
}


