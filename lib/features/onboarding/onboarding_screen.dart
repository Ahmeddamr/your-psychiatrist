import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:your_psychiatrist/core/helpers/extensions.dart';
import 'package:your_psychiatrist/core/theming/styles.dart';
import 'package:your_psychiatrist/core/routing/routes.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/onboarding.png',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Positioned(
              top: 30.h, // Use the calculated height
              right: 20.w,
              child: GestureDetector(
                onTap: () {
                  context.pushNamed(Routes.anonymous);
                },
                child: Text(
                  'Skip Intro',
                  style: TextStyles.font16WhitePoppinsUnderlined,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 20.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to ',
                    style: TextStyles.font36WhitetPtserif,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 150.w),
                    child: Text(
                      'InnerHeal ',
                      style: TextStyles.font24WhitetPtserif,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      'Equipped with services, Tools, and resources to guide you on your wallness journey.',
                      textAlign: TextAlign.center,
                      style: TextStyles.font13SemiTransparentWhitePoppins,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
