import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_psychiatrist/core/theming/colors.dart';

Widget BuildCardWidget(int index, String diseaseName, VoidCallback onTap) {
  final List<int> firstColorIndices = [
    0,
    3,
    4,
    7,
    8,
    11,
    12,
    15,
    16,
    19,
    20,
    23,
    24
  ];

  Color cardColor;
  if (firstColorIndices.contains(index)) {
    cardColor = ColorsManager.lightBlue; // First color
  } else {
    cardColor = ColorsManager.mainBlue; // Second color
  }

  Color textColor;
  if (firstColorIndices.contains(index)) {
    textColor = ColorsManager.deepBlue;
  } else {
    textColor = Colors.white;
  }

  return GestureDetector(
    onTap: onTap,
    child: Card(
      color: cardColor, // Apply color to the card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      elevation: 4.0,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Image at the bottom right
          Positioned(
            bottom: 8.h,
            right: 10.w,
            child: Image.asset(
              'assets/images/d${index + 1}.png',
              fit: BoxFit.cover,
              height: 80.h,
              width: 100.w,
            ),
          ),
          // Text at the top left
          Positioned(
            top: 8.h,
            left: 15.w,
            right: 8.w, // to prevent overflow
            child: Text(
              diseaseName,
              style: TextStyle(
                color: textColor,
                fontSize: 16.0,
                fontFamily: 'PTSerif',
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
