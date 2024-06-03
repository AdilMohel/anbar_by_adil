import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../consts/colors.dart';
import '../../profile_Screen.dart';

Widget genderDropdown() {
  Gender? _selectedGender;

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: DropdownButtonFormField<Gender>(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: greyColor),

        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: blackColor),
        ),
        filled: true,
        fillColor: whiteColor,
      ),
      value: _selectedGender,
      onChanged: (Gender? newValue) {
        setState(() {
          _selectedGender = newValue;
        });
      },
      items: Gender.values.map((Gender classType) {
        return DropdownMenuItem<Gender>(
          value: classType,
          child: Text(classType.toString().split('.').last),
        );
      }).toList(),
    ),
  );
}

void setState(Null Function() param0) {
}
