// import 'dart:io';
// import 'package:untitled15/consts/consts.dart';
// import 'package:untitled15/widget_common/our_button.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
// import 'components/text_field/email_widget.dart';
// import 'components/text_field/gender.dart';
// import 'components/text_field/text_field_entry.dart';
// import 'components/text_field/text_field_number.dart';
// import 'components/text_field/text_name_field.dart';
//
//
// enum Gender { male, female, other }
//
// class ProfileScreen extends StatefulWidget {
//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }
//
// class _ProfileScreenState extends State<ProfileScreen> {
//   File? _image;
//   final picker = ImagePicker();
//   final TextEditingController emailController = TextEditingController();
// // Controller for email input
//
//
//
//   Future<void> _pickImage() async {
//     try {
//       final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
//       if (pickedFile != null) {
//         setState(() {
//           _image = File(pickedFile.path);
//         });
//       } else {
//         print("No image selected.");
//       }
//     } catch (e) {
//       print('Error picking image: $e');
//       // Handle any errors here
//     }
//   }
//
//   var maskFormatter = MaskTextInputFormatter(
//       mask: '(###) ###-####',
//       filter: {"#": RegExp(r'[0-9]')}
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: whiteColor,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Stack(
//             children: <Widget>[
//               Column(
//                 children: <Widget>[
//                   Container(
//                     height: 190,
//                     color: primaryColor,
//                   ),
//                   Container(
//                     child: Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(top: 90),
//                             child: GestureDetector(
//                               onTap: _pickImage,
//                               child: const Text(
//                                 changePicture,
//                                 style: TextStyle(
//                                   fontSize: 12,
//                                   fontFamily: regular,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 20),
//                           profileTextField(firstName, bold, 14),
//                           profileTextFieldEntry(greyColor, blackColor),
//                           const SizedBox(height: 20),
//                           profileTextField(lastName, bold, 14),
//                           profileTextFieldEntry(greyColor, blackColor),
//                           const SizedBox(height: 20),
//                           profileTextField(email, bold, 14),
//                           EmailInputField(controller: emailController,), // Using the EmailInputField
//                           const SizedBox(height: 20),
//                           profileTextField(phoneNumber, bold, 14),
//                           phoneTextFieldEntry(greyColor, blackColor, maskFormatter),
//                           const SizedBox(height: 20),
//                           profileTextField(gender, bold, 14),
//                           genderDropdown(),
//                           const SizedBox(height: 20),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 40),
//                             child: ourButton(
//                               onPress: () {
//
//                               },
//                               color: primaryColor,
//                               textColor: whiteColor,
//                               title: update,
//                             ),
//                           ),
//                         ]
//                     ),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 120),
//                 child: Center(
//                   child: GestureDetector(
//                     onTap:_pickImage,
//                     child:
//                     CircleAvatar(
//                       radius: 71,
//                       backgroundColor: whiteColor,
//                       child:
//                       CircleAvatar(
//                         radius: 69,
//                         backgroundImage: _image != null ? FileImage(_image!) : null,
//                         child: _image == null
//                             ? const Icon(Icons.add_photo_alternate, size: 50)
//                             : null,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//
//
//               const SizedBox(height: 10,)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
// }
import 'dart:io';
import 'package:untitled15/consts/consts.dart';
import 'package:untitled15/widget_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'components/text_field/gender.dart';
import 'components/text_field/text_field_entry.dart';
import 'components/text_field/text_field_number.dart';
import 'components/text_field/text_name_field.dart';

enum Gender { male, female, other }

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? _image;
  final picker = ImagePicker();
  bool isEditable = false;  // State to manage if the fields are editable
  String buttonText = 'update'; // Initial button text
  final TextEditingController emailController = TextEditingController();

  Future<void> _pickImage() async {
    try {
      final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _image = File(pickedFile.path);
        });
      } else {
        print("No image selected.");
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }

  var maskFormatter = MaskTextInputFormatter(
      mask: '(###) ###-####',
      filter: {"#": RegExp(r'[0-9]')}
  );

  void _toggleEdit() {
    setState(() {
      isEditable = !isEditable;
      buttonText = isEditable ? 'save' : 'update';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 190,
                    color: primaryColor,
                  ),
                  Container(
                    child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 90),
                            child: GestureDetector(
                              onTap: _pickImage,
                              child: const Text(
                                changePicture,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: regular,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          profileTextField(firstName, bold, 14),
                          profileTextFieldEntry(greyColor, blackColor, isEditable), // Ensure these functions support an editable flag
                          const SizedBox(height: 20),
                          profileTextField(lastName, bold, 14),
                          profileTextFieldEntry(greyColor, blackColor, isEditable),
                          const SizedBox(height: 20),
                          profileTextField(email, bold, 14),
                          // EmailInputField(controller: emailController, readOnly: !isEditable), // Using the EmailInputField
                          const SizedBox(height: 20),
                          profileTextField(phoneNumber, bold, 14),
                          phoneTextFieldEntry(greyColor, blackColor, maskFormatter, isEditable),
                          const SizedBox(height: 20),
                          profileTextField(gender, bold, 14),
                          GenderDropdown(isEditable: isEditable,),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: ourButton(
                              onPress: _toggleEdit,
                              color: primaryColor,
                              textColor: whiteColor,
                              title: buttonText,
                            ),
                          ),
                        ]
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Center(
                  child: GestureDetector(
                    onTap:_pickImage,
                    child:
                    CircleAvatar(
                      radius: 71,
                      backgroundColor: whiteColor,
                      child:
                      CircleAvatar(
                        radius: 69,
                        backgroundImage: _image != null ? FileImage(_image!) : null,
                        child: _image == null
                            ? const Icon(Icons.add_photo_alternate, size: 50)
                            : null,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
