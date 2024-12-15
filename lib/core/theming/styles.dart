import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_psychiatrist/core/theming/colors.dart';

class TextStyles {
  static TextStyle font36WhitetPtserif = TextStyle(
    fontSize: 36.sp,
    color: Colors.white,
    fontFamily: 'PTSerif',
  );

  static TextStyle font24WhitetPtserif = TextStyle(
    fontSize: 24.sp,
    color: Colors.white,
    fontFamily: 'PTSerif',
  );

  static TextStyle font16WhitePoppinsUnderlined = TextStyle(
    color: Colors.white,
    fontSize: 13.sp,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    decorationColor: Colors.white,
    decorationThickness: 2,
    fontFamily: 'Poppins',
  );

  static TextStyle font13SemiTransparentWhitePoppins = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.semiTransparentWhite,
  );

  static TextStyle font40BlueMidnightPoppins = TextStyle(
    fontSize: 40.sp,
    color: ColorsManager.blueMidNight,
    fontFamily: 'Poppins',
    shadows: [
      Shadow(
        blurRadius: 4.0,
        color: Color.fromRGBO(0, 0, 0, 0.25),
        offset: Offset(0, 4),
      ),
    ],
  );

  static TextStyle font32BlueMidnightPoppinsShadow = TextStyle(
    fontSize: 32.sp,
    color: ColorsManager.blueMidNight,
    fontFamily: 'Poppins',
    shadows: [
      Shadow(
        blurRadius: 4.0,
        color: Color.fromRGBO(0, 0, 0, 0.25),
        offset: Offset(0, 4),
      ),
    ],
  );

  static TextStyle font16BlueMidnightPoppins = TextStyle(
    fontSize: 16.sp,
    color: ColorsManager.buttonTextColor,
    fontFamily: 'Poppins',
  );

  static TextStyle font10WhitePoppins = TextStyle(
    fontSize: 10.sp,
    color: Colors.white,
    fontFamily: 'Poppins',
  );

  static TextStyle font16WhitePoppins = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    //fontFamily: 'Poppins',
  );

  static TextStyle font9darkSapphireBluePoppins = TextStyle(
    fontSize: 9.sp,
    fontFamily: 'Poppins',
    color: ColorsManager.darkSapphireBlue,
  );

  static TextStyle font11semiTransparentWhitePoppins = TextStyle(
    fontSize: 11.sp,
    color: ColorsManager.semiTransparentWhite,
  );

  static TextStyle font16deepBluePoppins = TextStyle(
    fontSize: 16.sp,
    color: ColorsManager.deepBlue,
    fontFamily: 'Poppins',
  );

  static TextStyle font10mainBluePoppins = TextStyle(
    fontSize: 10.sp,
    color: ColorsManager.mainBlue,
    fontFamily: 'Poppins',
  );

  static TextStyle font9semiTransparentBluePoppins = TextStyle(
    fontSize: 9.sp,
    color: ColorsManager.semiTransparentBlue,
    fontFamily: 'Poppins',
  );

  static TextStyle font10semiTransparentBlue = TextStyle(
    fontSize: 10.sp,
    color: ColorsManager.semiTransparentBlue,
  );

  static TextStyle font8mainBlue = TextStyle(
    fontSize: 8.sp,
    color: ColorsManager.mainBlue,
  );

  static TextStyle font16mainBluePoppins = TextStyle(
    fontSize: 16.sp,
    color: ColorsManager.mainBlue,
    fontFamily: 'Poppins',
  );

  static TextStyle font8semiTransparentBlue = TextStyle(
    fontSize: 8.sp,
    color: ColorsManager.semiTransparentBlue,
  );

  static TextStyle font18mainBluePoppinsShadow = TextStyle(
    fontSize: 18.sp,
    color: ColorsManager.mainBlue,
    fontFamily: 'Poppins',
    shadows: [
      Shadow(
        blurRadius: 4.0,
        color: Color.fromRGBO(0, 0, 0, 0.25),
        offset: Offset(0, 4),
      ),
    ],
  );

  static TextStyle font16mainBluePoppinsshadow = TextStyle(
    fontSize: 16.sp,
    color: ColorsManager.mainBlue,
    fontFamily: 'Poppins',
    shadows: [
      Shadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          blurRadius: 3.0,
          offset: Offset(0.0, 3.0))
    ],
  );

  static TextStyle font14mainBluePoppinsshadow = TextStyle(
    color: ColorsManager.mainBlue,
    fontSize: 14.sp,
    fontFamily: 'Poppins',
    decoration: TextDecoration.underline,
    shadows: [
      Shadow(
        color: Color.fromRGBO(0, 0, 0, 0.25),
        offset: Offset(0, 4),
        blurRadius: 4,
      ),
    ],
  );
}
