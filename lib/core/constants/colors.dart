import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color primarColor = Color(0xff080E1E);
const Color whiteColor = Color(0xffffffff);
const Color blackColor = Color(0xff000000);
const Color buttonColor = Color(0xff6447CE);
const Color boxColor = Color(0xff161C2C);

LinearGradient linearGradient = LinearGradient(colors: [
  const Color(0XFF27F7AC).withOpacity(0.30),
  const Color(0XFF6447CE).withOpacity(0.30),
]);

LinearGradient linearGradientOK = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.centerLeft,
    colors: [
      Color(0XFF8969FF),
      Color(0XFF6447CE),
    ]);

BoxDecoration decoration = BoxDecoration(
    color: boxColor,
    borderRadius: BorderRadius.circular(50.r),
    boxShadow: [
      BoxShadow(
          color: Color(0xff343E6B).withOpacity(0.2),
          spreadRadius: 0,
          blurRadius: 1,
          offset: Offset(0, 1))
    ]);
