import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled15/consts/consts.dart';

import '../../../consts/strings.dart';

class ResendButton extends StatefulWidget {
  @override
  _ResendButtonState createState() => _ResendButtonState();
}

class _ResendButtonState extends State<ResendButton> {
  Timer? _timer;
  int _start = 60; // Start from 60 seconds
  bool _isButtonVisible = false; // Initially hide the button

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            _isButtonVisible = true; // Show the button after countdown
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer if the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: _isButtonVisible // Check if the button should be visible
                ? TextButton(
              onPressed: () {
                setState(() {
                  _start = 60; // Reset timer
                  _isButtonVisible = false; // Hide button
                  startTimer(); // Restart timer
                });
              },
              child: Text(
                resendCodeLb,
                style: TextStyle(
                  color: Colors.black, // Assuming blackColor is defined elsewhere
                  fontSize: 16,
                  fontFamily: 'Arial', // Assuming regular is defined elsewhere
                ),
              ),
            )
                : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Text('Please wait $_start seconds',
                    style: TextStyle(
                      color: blackColor, // Assuming blackColor is defined elsewhere
                      fontSize: 16,
                      fontFamily: bold, // Assuming regular is defined elsewhere
                    ),
                  ),
                ), // Show countdown
          ),
        ),
      ],
    );
  }
}
