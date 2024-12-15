import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_psychiatrist/core/theming/colors.dart';
import 'package:your_psychiatrist/core/theming/styles.dart';
import 'package:your_psychiatrist/features/chatbot_message/chatbot.dart';

Widget GetStartedButton(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      //Navigator.of(context).push(MaterialPageRoute(builder: (context) => chatPage()));
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorsManager.deepIndigo,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 8.h),
      child: Text(
        'Get Started',
        style: TextStyles.font16WhitePoppins,
      ),
    ),
  );
}
