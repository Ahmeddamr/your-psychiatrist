import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_psychiatrist/core/helpers/spacing.dart';
import 'package:your_psychiatrist/core/theming/colors.dart';
import 'package:your_psychiatrist/core/theming/styles.dart';

import 'circle_avatars.dart';

class TherapistShowcaseCard extends StatelessWidget {
  const TherapistShowcaseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Container(
        // width: 324.w,
        // height: 157.h,
        decoration: BoxDecoration(
          color: ColorsManager.mainBlue,
          borderRadius: BorderRadius.circular(30.sp),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Our Professional Therapists.',
                style: TextStyles.font16WhitePoppins,
              ),
              verticalSpace(15),
              Text(
                'We have a wide network of professionals with diverse expertise and backgrounds. All therapists are qualified and accredited with a minimum Masters degree or Doctorate in their field.',
                style: TextStyles.font11semiTransparentWhitePoppins,
                textAlign: TextAlign.center,
              ),
              verticalSpace(10),
              DoctorImagesRow(),
            ],
          ),
        ),
      ),
    );
  }
}
