import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_psychiatrist/core/helpers/spacing.dart';
import 'package:your_psychiatrist/core/theming/styles.dart';

class SignUpTextAndImage extends StatelessWidget {
  const SignUpTextAndImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Register Now',
              style: TextStyles.font32BlueMidnightPoppinsShadow,
            ),
          ),
          verticalSpace(15),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/images/signup.png',
              height: 155.h,
              width: 185.w,
            ),
          ),
        ],
      ),
    );
  }
}
