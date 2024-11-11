import 'package:flutter/material.dart';
import 'package:tv_app/core/constants/colors.dart';

class CustomBoxDecoration extends StatelessWidget {
  final child;
  const CustomBoxDecoration({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.black45),
          color: boxColor),
      child: child,
    );
  }
}
