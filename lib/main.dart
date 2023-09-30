import 'package:flutter/material.dart';
import 'package:parth_savaliya_demo2/view/Homescreen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => Homescreen(),
        },
      ),
    ),
  );
}