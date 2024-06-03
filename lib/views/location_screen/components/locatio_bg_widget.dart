import 'package:flutter/cupertino.dart';

Widget locationBgWidget({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/location_bg.png'),
        fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}