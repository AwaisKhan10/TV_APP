// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CustomBottomNavigator extends StatelessWidget {
  String iconfilled;
  String iconunfilled;
  final onTap;
  int currentIndex;
  int indexNumber;
  String? title;
  CustomBottomNavigator(
      {Key? key,
      required this.iconfilled,
      required this.iconunfilled,
      required this.onTap,
      required this.currentIndex,
      this.title,
      required this.indexNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                indexNumber == currentIndex ? iconfilled : iconunfilled,
                height: 24,
                width: 24,
              ),
              // Text('$text'),
            ],
          ),
          Text(
            "$title",
            style: TextStyle(
                color: indexNumber == currentIndex
                    ? Colors.white
                    : Color(0xff979797)),
          )
        ],
      ),
    );
  }
}
