import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_psychiatrist/core/helpers/spacing.dart';
import 'package:your_psychiatrist/core/theming/styles.dart';

class LoginTextAndImage extends StatelessWidget {
  const LoginTextAndImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Log In',
              style: TextStyles.font40BlueMidnightPoppins,
            ),
          ),
          verticalSpace(10),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/images/login.png',
              height: 118.h,
              width: 145.w,
            ),
          ),
        ],
      ),
    );
  }
}
